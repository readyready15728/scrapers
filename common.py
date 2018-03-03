import urlparse
import requests
from bs4 import BeautifulSoup

# Don't crap out trying to get data from the server; just keep trying
def resilient_get(uri):
    while True:
        try:
            return requests.get(uri, timeout=None)
        except:
            pass

def beautify(request):
    return BeautifulSoup(request.text, 'lxml')

def absolutify(base_uri, relative_uri):
    return urlparse.urljoin(base_uri, relative_uri)
