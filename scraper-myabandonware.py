import csv
import re
import sys
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
    for game_tag in category_page.select('.item'):
        # Skip ads and UX junk
        if game_tag.find_all('script') or 'filler' in game_tag.attrs['class'] or 'a1222' in game_tag.attrs['class']:
            continue

        game_link = game_tag.find('a', class_='name')
        title = game_link.string
        platform = game_tag.find(class_ = 'ptf').string
        year = int(game_tag.find(class_ = 'year').string)
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
        # Since Python 3 this doesn't happen automatically, apparently
        sys.stderr.flush()
        games.append(Record(title, avg_rating, no_ratings))

    # The current page is marked with the class "current". If we can find a
    # successor that is an <a> tag, we move on to that. If not, we quit and 
    # write out the csv.
    try:
        category_uri = absolutify(base_uri, category_page.find(class_ = 'current').find_next_sibling('a')['href'])
    except TypeError:
        # Will be reached if there is an attempt to index None with 'href'
        break

writer = csv.writer(sys.stdout)
writer.writerow(['Title', 'Average Rating', 'Number of Ratings'])
# Makes sure that duplicates are filtered out
games = set(games)

for game in games:
    writer.writerow([game.title, '%.2f' % game.avg_rating, game.no_ratings])
