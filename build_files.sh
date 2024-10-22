#!/bin/bash

echo " BUILD START"

# Ensure pip is installed
python3.9 -m ensurepip --upgrade

# Install the dependencies
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r requirements.txt

# Collect static files in the required directory
python3.9 chaiheadq/manage.py collectstatic --noinput --clear --settings=your_project_name.settings

echo " BUILD END"
