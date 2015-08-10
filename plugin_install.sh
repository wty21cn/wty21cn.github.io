#!/usr/bin/env bash

npm install hexo-generator-feed --save
echo -e "\nfeed:\n  type: atom\n  path: atom.xml\n  limit: false\n" >> _config.yml
npm install hexo-generator-sitemap --save
echo -e "\nsitemap:\n  path: sitemap.xml\n" >> _config.yml
npm install hexo-deployer-git --save
