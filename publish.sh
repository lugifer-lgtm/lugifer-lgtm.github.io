#! /bin/bash

jekyll build
scp -r _site/* coc.apucomputing.in:public_html
