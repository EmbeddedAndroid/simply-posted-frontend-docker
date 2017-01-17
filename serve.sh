#!/bin/bash
mkdir -p /webapps 
cd /webapps
git clone https://github.com/EmbeddedAndroid/simply-posted-portal.git
cd simply-posted-portal
pip install -r requirements.txt
./manage.py collectstatic --noinput
nginx -g 'daemon off;'
