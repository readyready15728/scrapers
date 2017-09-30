#!/bin/bash

export PYTHONIOENCODING=utf-8

mkdir -p ratings/myabandonware &> /dev/null
rm log
python ratings.py 'http://www.myabandonware.com/browse/genre/action-2/' > ratings/myabandonware/action.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/adventure-3/' > ratings/myabandonware/adventure.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/educational-3/' > ratings/myabandonware/educational.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/racing-driving-4/' > ratings/myabandonware/racing-driving.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/role-playing-rpg-5/' > ratings/myabandonware/rpg.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/simulation-7/' > ratings/myabandonware/simulation.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/sports-8/' > ratings/myabandonware/sports.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/strategy-6/' > ratings/myabandonware/strategy.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/managerial-13/' > ratings/myabandonware/managerial.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/medieval-fantasy-16/' > ratings/myabandonware/medieval-fantasy.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/puzzle-solving-1m/' > ratings/myabandonware/puzzle-solving.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/sci-fi-futuristic-1t/' > ratings/myabandonware/sci-fi-futuristic.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/turn-based-28/' > ratings/myabandonware/turn-based.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/add-on-2j/' > ratings/myabandonware/add-on.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/battlemech-6/' > ratings/myabandonware/battlemech.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/board-party-game-8/' > ratings/myabandonware/board-party-game.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/comics-e/' > ratings/myabandonware/comics.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/compilation-shovelware-2i/' > ratings/myabandonware/compilation-shovelware.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/cyberpunk-dark-sci-fi-g/' > ratings/myabandonware/cyberpunk-dark-sci-fi.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/d-d-ad-d-36/' > 'ratings/myabandonware/d&d-ad&d.csv' 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/detective-mystery-h/' > ratings/myabandonware/detective-mystery.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/dungeon-crawler-2l/' > ratings/myabandonware/dungeon-mystery.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/ecology-nature-i/' > ratings/myabandonware/ecology-nature.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/editor-construction-set-2h/' > ratings/myabandonware/editor-construction.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/flight-l/' > ratings/myabandonware/flight.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/game-show-o/' > ratings/myabandonware/game-show.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/geography-p/' > ratings/myabandonware/geography.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/hacking-2v/' > ratings/myabandonware/hacking.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/helicopter-t/' > ratings/myabandonware/helicopter.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/historical-battle-specific-exact-u/' > ratings/myabandonware/historical-battle-specific-exact.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/history-v/' > ratings/myabandonware/history.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/horror-x/' > ratings/myabandonware/horror.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/interactive-fiction-10/' > ratings/myabandonware/interactive-fiction.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/math-logic-15/' > ratings/myabandonware/math-logic.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/naval-1b/' > ratings/myabandonware/naval.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/norse-mythology-31/' > ratings/myabandonware/norse-mythology.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/post-apocalyptic-1k/' > ratings/myabandonware/post-apocalyptic.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/rts-39/' > ratings/myabandonware/rts.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/real-time-1o/' > ratings/myabandonware/real-time.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/science-1u/' > ratings/myabandonware/science.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/shooter-1v/' > ratings/myabandonware/shooter.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/spy-espionage-20/' > ratings/myabandonware/spy-espionage.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/stealth-21/' > ratings/myabandonware/stealth.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/steampunk-2x/' > ratings/myabandonware/steampunk.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/submarine-2s/' > ratings/myabandonware/submarine.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/survival-horror-23/' > ratings/myabandonware/survival-horror.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/tank-24/' > ratings/myabandonware/tank.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/trade-2y/' > ratings/myabandonware/trade.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/train-26/' > ratings/myabandonware/train.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/western-2o/' > ratings/myabandonware/western.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/world-war-i-32/' > ratings/myabandonware/world-war-i.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/world-war-ii-35/' > ratings/myabandonware/world-war-ii.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/platform/amiga/' > ratings/myabandonware/amiga.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/platform/dos/' > ratings/myabandonware/dos.csv 2>> log
