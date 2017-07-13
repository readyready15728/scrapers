import re
import sys
import unicodecsv
from collections import namedtuple
from pyquery import PyQuery as pq

Record = namedtuple('Record', ['title', 'avg_rating', 'no_ratings'])

# Don't crap out trying to get data from the server; just keep trying
def resilient_pq(uri):
    while True:
        try:
            return pq(uri)
        except:
            pass

games_with_ratings = []
# Starts as e.g. http://www.myabandonware.com/browse/genre/simulation-7/ then
# iterates through all the numbered pages listed in that category in the
# range [2, n] where n is the last page
category_uri = sys.argv[1]

while True:
    category_page = resilient_pq(category_uri)
    category_page.make_links_absolute(base_url='http://myabandonware.com/')

    # Runs through the <a> tags in the .name divs which link to individual
    # games in the category
    for game_link in category_page('.name > a'):
        game_link = pq(game_link)

        title = game_link.text()
        # There is a <div> after the <div> containing the link to the game
        # page with this good stuff in it
        platform_and_year = game_link.parent().next()
        platform = platform_and_year.find('.ptf').text()
        year = int(platform_and_year.find('.year').text())
        # Will look something like: The Settlers II: Gold Edition (DOS - 1997)
        title = '%s (%s - %d)' % (title, platform, year)

        game_uri = game_link.attr('href')
        game_page = resilient_pq(game_uri)
        # The <div> selected here will contain text looking something like:
        # 4.55 / 5 - 119 votes
        # 
        # The question mark is there because some of the pages only say "vote"
        # due to the number of votes
        m = re.search('((?:\d|\.)+) / 5 - (\d+) votes?', game_page('.gameRated').text())
        avg_rating = float(m.group(1))
        no_ratings = int(m.group(2))

        # The process can take a while so we'll want logging
        sys.stderr.write(title + '\n')
        games_with_ratings.append(Record(title, avg_rating, no_ratings))

    # The current page is marked with the class "current". If we can find a
    # successor that is an <a> tag, we move on to that. If not, we quit and 
    # write out the csv.
    category_uri = category_page('.current').next().attr('href')

    if category_uri is None:
        break

writer = unicodecsv.writer(sys.stdout, encoding='utf-8')
writer.writerow(['Title', 'Average Rating', 'Number of Ratings'])

for record in games_with_ratings:
    writer.writerow([record.title, '%.2f' % record.avg_rating, record.no_ratings])
