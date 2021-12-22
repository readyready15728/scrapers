#!/bin/bash

mkdir -p output/myabandonware &> /dev/null
rm log &> /dev/null
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/action-1/' > output/myabandonware/action.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/adventure-2/' > output/myabandonware/adventure.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/educational-3/' > output/myabandonware/educational.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/puzzle-9/' > output/myabandonware/puzzle.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/racing-driving-4/' > output/myabandonware/racing-driving.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/role-playing-rpg-5/' > output/myabandonware/rpg.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/simulation-7/' > output/myabandonware/simulation.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/sports-8/' > output/myabandonware/sports.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/genre/strategy-6/' > output/myabandonware/strategy.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/3do/' > output/myabandonware/3do.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/acorn-32-bit/' > output/myabandonware/acorn-32-bit.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/amiga/' > output/myabandonware/amiga.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/amiga-cd32/' > output/myabandonware/amiga-cd32.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/cpc/' > output/myabandonware/cpc.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/apple2/' > output/myabandonware/apple-2.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/apple2gs/' > output/myabandonware/apple-2-gs.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/atari-5200/' > output/myabandonware/atari-5200.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/atari-8-bit/' > output/myabandonware/atari-8-bit.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/atari-st/' > output/myabandonware/atari-st.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/bbc-micro/' > output/myabandonware/bbc-micro.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/colecovision/' > output/myabandonware/colecovision.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/commodore-16-plus4/' > output/myabandonware/commodore-16.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/c64/' > output/myabandonware/commodore-64.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/dos/' > output/myabandonware/dos.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/dragon-3264/' > output/myabandonware/dragon-32-64.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/electron/' > output/myabandonware/electron.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/game-gear/' > output/myabandonware/game-gear.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/genesis/' > output/myabandonware/genesis.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/intellivision/' > output/myabandonware/intellivision.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/linux/' > output/myabandonware/linux.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/mac/' > output/myabandonware/mac.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/msx/' > output/myabandonware/msx.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/pc88/' > output/myabandonware/pc-88.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/pc98/' > output/myabandonware/pc-98.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/sega-32x/' > output/myabandonware/sega-32x.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/sega-cd/' > output/myabandonware/sega-cd.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/sega-master-system/' > output/myabandonware/sega-master-system.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/sharp-x68000/' > output/myabandonware/sharp-x68000.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/turbografx-cd/' > output/myabandonware/turbografx-cd.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/vic-20/' > output/myabandonware/vic-20.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/windows/' > output/myabandonware/windows.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/win3x/' > output/myabandonware/win-3x.csv 2>> log
python3 scraper-myabandonware.py 'https://www.myabandonware.com/browse/platform/zx-spectrum/' > output/myabandonware/zx-spectrum.csv 2>> log
