#!/bin/bash

mkdir -p output/ada &> /dev/null
python3 scraper-ada.py > output/ada/ada.csv
