import re
import sys
import unicodecsv
from collections import namedtuple
from common import *

Record = namedtuple('Record', ['title', 'avg_rating', 'no_ratings'])
base_uri = 'http://myabandonware.com'

games = []
# Starts as e.g. http://www.myabandonware.com/browse/genre/simulation-7/ then
# iterates through all the numbered pages listed in that category in the
# range [2, n] where n is the last page
category_uri = sys.argv[1]

while True:
    category_page = beautify(resilient_get(category_uri))

    # Runs through the <a> tags in the .name divs which link to individual
    # games in the category
    for game_link in category_page.select('.name > a'):
        title = game_link.string
        # There is a <div> after the <div> containing the link to the game
        # page with this good stuff in it; find_next_sibling is necessary
        # because BeautifulSoup actually considers a newline character a
        # sibling :/
        platform_and_year = game_link.parent.find_next_sibling(class_ = 'platyear')
        platform = platform_and_year.find(class_ = 'ptf').string
        year = int(platform_and_year.find(class_ = 'year').string)
        # Will look something like: The Settlers II: Gold Edition (DOS - 1997)
        title = '%s (%s - %d)' % (title, platform, year)

        game_uri = game_link['href']
        game_page = beautify(resilient_get(absolutify(base_uri, game_uri)))
        # The <div> selected here will contain text looking something like:
        # 4.55 / 5 - 119 votes
        # 
        # The question mark is there because some of the pages only say "vote"
        # due to the number of votes
        m = re.search('((?:\d|\.)+) / 5 - (\d+) votes?', game_page.find(class_ = 'gameRated').get_text())
        avg_rating = float(m.group(1))
        no_ratings = int(m.group(2))

        # The process can take a while so we'll want logging
        sys.stderr.write(title + '\n')
        games.append(Record(title, avg_rating, no_ratings))

    # The current page is marked with the class "current". If we can find a
    # successor that is an <a> tag, we move on to that. If not, we quit and 
    # write out the csv.
    try:
        category_uri = absolutify(base_uri, category_page.find(class_ = 'current').find_next_sibling('a')['href'])
    except TypeError:
        # will be reached there is an attempt to index None with 'href'
        break

writer = unicodecsv.writer(sys.stdout, encoding='utf-8')
writer.writerow(['Title', 'Average Rating', 'Number of Ratings'])

for game in games:
    writer.writerow([game.title, '%.2f' % game.avg_rating, game.no_ratings])
