#!/bin/bash

export PYTHONIOENCODING=utf-8

mkdir ratings &> /dev/null
rm log
python ratings.py 'http://www.myabandonware.com/browse/genre/action-2/' > ratings/action.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/adventure-3/' > ratings/adventure.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/educational-3/' > ratings/educational.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/racing-driving-4/' > ratings/racing-driving.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/role-playing-rpg-5/' > ratings/rpg.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/simulation-7/' > ratings/simulation.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/sports-8/' > ratings/sports.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/genre/strategy-6/' > ratings/strategy.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/managerial-13/' > ratings/managerial.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/medieval-fantasy-16/' > ratings/medieval-fantasy.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/puzzle-solving-1m/' > ratings/puzzle-solving.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/sci-fi-futuristic-1t/' > ratings/sci-fi-futuristic.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/turn-based-28/' > ratings/turn-based.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/add-on-2j/' > ratings/add-on.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/battlemech-6/' > ratings/battlemech.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/board-party-game-8/' > ratings/board-party-game.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/comics-e/' > ratings/comics.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/compilation-shovelware-2i/' > ratings/compilation-shovelware.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/cyberpunk-dark-sci-fi-g/' > ratings/cyberpunk-dark-sci-fi.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/d-d-ad-d-36/' > 'ratings/d&d-ad&d.csv' 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/detective-mystery-h/' > ratings/detective-mystery.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/dungeon-crawler-2l/' > ratings/dungeon-mystery.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/ecology-nature-i/' > ratings/ecology-nature.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/editor-construction-set-2h/' > ratings/editor-construction.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/flight-l/' > ratings/flight.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/game-show-o/' > ratings/game-show.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/geography-p/' > ratings/geography.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/hacking-2v/' > ratings/hacking.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/helicopter-t/' > ratings/helicopter.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/historical-battle-specific-exact-u/' > ratings/historical-battle-specific-exact.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/history-v/' > ratings/history.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/horror-x/' > ratings/horror.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/interactive-fiction-10/' > ratings/interactive-fiction.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/math-logic-15/' > ratings/math-logic.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/naval-1b/' > ratings/naval.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/norse-mythology-31/' > ratings/norse-mythology.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/post-apocalyptic-1k/' > ratings/post-apocalyptic.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/rts-39/' > ratings/rts.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/real-time-1o/' > ratings/real-time.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/science-1u/' > ratings/science.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/shooter-1v/' > ratings/shooter.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/spy-espionage-20/' > ratings/spy-espionage.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/stealth-21/' > ratings/stealth.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/steampunk-2x/' > ratings/steampunk.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/submarine-2s/' > ratings/submarine.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/survival-horror-23/' > ratings/survival-horror.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/tank-24/' > ratings/tank.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/trade-2y/' > ratings/trade.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/train-26/' > ratings/train.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/western-2o/' > ratings/western.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/world-war-i-32/' > ratings/world-war-i.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/theme/world-war-ii-35/' > ratings/world-war-ii.csv 2>> log
python ratings.py 'http://www.myabandonware.com/browse/platform/amiga/' > ratings/amiga.csv 2>> log
