#!/bin/bash

bundle exec jekyll build --config _config.yml,_config_apu.yml
scp -r _site/* coc.apucomputing.in:public_html
