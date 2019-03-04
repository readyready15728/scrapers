import urllib
import requests
import time
from bs4 import BeautifulSoup

# Don't crap out trying to get data from the server; just keep trying
def resilient_get(uri):
    while True:
        try:
            return requests.get(uri, headers={'User-Agent': 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0'}, timeout=None)
        except:
            time.sleep(5)
            pass

def beautify(request):
    return BeautifulSoup(request.text, 'lxml')

def absolutify(base_uri, relative_uri):
    return urllib.parse.urljoin(base_uri, relative_uri)
