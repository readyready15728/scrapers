import re
import sys
import unicodecsv
from collections import namedtuple
from common import *

Record = namedtuple('Record', ['production', 'year', 'chipset', 'category', 'vote', 'party', 'pos'])
demos_uri = 'http://ada.untergrund.net/?p=demos'

demos = []
demos_page = beautify(resilient_get(demos_uri))

for tr in demos_page.select('tr'):
    # There is absolutely no semantic information in the CSS classes (gross),
    # so I have to look for table rows that have exactly seven <td> tags in
    # them, of which the first must contain an <a> tag, indicating the program
    # has moved past the table header
    td_counter = 0

    for child in tr.contents:
        if child.name == 'td':
            td_counter += 1

    if td_counter == 7 and tr.select('td:nth-of-type(1)')[0].find('a') is not None:
        demo = []

        for td in tr.find_all('td'):
            demo.append(td.get_text())

        demos.append(Record(*demo))

writer = unicodecsv.writer(sys.stdout, encoding='utf-8')
writer.writerow(['Production', 'Year', 'Chipset', 'Category', 'Vote', 'Party', 'Pos'])

for demo in demos:
    writer.writerow([demo.production,
                     demo.year,
                     demo.chipset,
                     demo.category,
                     demo.vote,
                     demo.party,
                     demo.pos])
