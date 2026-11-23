#!/bin/bash
set -e

msg="${1:-update blog}"

git add .
git commit -m "$msg" || echo "Nothing new to commit"
git push

bundle exec jekyll build --config _config.yml,_config_apu.yml
scp -r _site/* coc.apucomputing.in:public_html
