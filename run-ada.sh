#!/bin/bash

mkdir -p ratings/ada &> /dev/null
python3 ratings-ada.py > ratings/ada/ada.csv
