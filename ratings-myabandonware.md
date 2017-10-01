# myabandonware-ratings
## A scraper to extract ratings information from the site My Abandonware

Then, in the case of a single use, consider the example
`python ratings.py http://www.myabandonware.com/browse/genre/simulation-7/ > simulation.csv`.
This example illustrates two things. The first is that the sole argument to the
scraper is any page on My Abandonware that indexes multiple games. In this
example, the Simulation page accessed from the Genre section is being used, but
it doesn't have to be from the genre lists. Any of the other ways My
Abandonware lists games should do. For instance, one might supply the argument
`http://www.myabandonware.com/browse/year/1986/` to scrape the ratings for all
the games from 1986, if one so desired. The second thing the example invocation
shows is that the scraper will print CSV-formatted data to standard output.

The included script `run.sh` shows how the scraper can be used in a batch
setting. It scrapes a number of categories I personally consider at least
remotely interesting, but its template can obviously be remade to fit another's
wants. Note that it includes the line `export PYTHONIOENCODING=utf-8`, which
makes Python deal with titles of foreign origin properly. Additionally, note
that standard error output is redirected into a file called `log`. Because
scraping can take a very substantial time, having a log can be highly
desirable. If `run.sh` is run in the background, `tail -f log` is good for
periodic checks on progress.

In any case, when all is said and done, you will have one or more .csv files
with title, average rating and number of ratings for each game. The titles are
augmented with information about platform and year of release. At first glance,
it may seem that it is best to sort first by average rating before either of
the other two columns. The problem with this is that there are a number of
games even only one person gave a five-star rating at the top. What actually
works a lot better is sorting first by number of ratings, then by average
rating, then lastly by name. My reasoning is that it seems that the central
limit theorem applies here somehow, meaning that having lots of ratings greatly
reduces the variance of the estimate of some "true" average rating. Try it and
see if you agree with me.
