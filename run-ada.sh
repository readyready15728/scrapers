#!/bin/bash

export PYTHONIOENCODING=utf-8

mkdir -p ratings/ada &> /dev/null
python ratings-ada.py > ratings/ada/ada.csv
