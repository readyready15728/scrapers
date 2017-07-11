import sys
import requests
import socket
from lxml import html

games_with_ratings = []
listing_uri = sys.argv[1]

def resilient_get(uri, timeout=5):
    while True:
        try:
            page = requests.get(uri, timeout=timeout)
            return page
        except:
            pass

while True:
    listing_page = resilient_get(listing_uri)
    listing_page.encoding = 'utf-8'
    listing_page_tree = html.fromstring(listing_page.text)
    listing_page_tree.make_links_absolute(listing_uri)

    for i in listing_page_tree.xpath('//div[@class="name"]/a'):
        game_uri = list(i.iterlinks())[0][2]
        game_page = resilient_get(game_uri)
        game_page.encoding = 'utf-8'
        game_page_tree = html.fromstring(game_page.text)

        title = i.text
        platform = i.xpath('../following-sibling::div[@class="platyear"]/span[@class="ptf"]')[0].text
        release_year = i.xpath('../following-sibling::div[@class="platyear"]/span[@class="year"]')[0].text
        title = '%s (%s - %s)' % (title, platform, release_year)

        try:
            rating = float(game_page_tree.xpath('//span[@itemprop="ratingValue"]/text()')[0])
            votes = int(game_page_tree.xpath('//span[@itemprop="ratingCount"]/text()')[0])
            games_with_ratings.append((title, rating, votes))
        except IndexError:
            games_with_ratings.append((title, 0, 0))
            
        sys.stderr.write(title + '\n')

    try:
        listing_uri = list(listing_page_tree.xpath('//a[@class="current"]/following-sibling::a[position()=1]')[0].iterlinks())[0][2]
    except IndexError:
        break

print ','.join(['Title', 'Average Rating', 'Number of Ratings'])

for i in games_with_ratings:
    # Escape double quotes
    print ','.join(['"%s"' % i[0].replace('"', '""'), str(i[1]), str(i[2])])
