#!/bin/bash
hexo clean
hexo g
hexo d
if [ -f "_config.yml.github" ]; then
    echo "gitcafe deployed"
    mv _config.yml _config.yml.gitcafe
    mv _config.yml.github _config.yml
    hexo d
    echo "github deployed"
    mv _config.yml _config.yml.github
    mv _config.yml.gitcafe _config.yml
elif [ -f "_config.yml.gitcafe" ]; then
    echo "github deployed"
    mv _config.yml _config.yml.github
    mv _config.yml.gitcafe _config.yml
    hexo d
    echo "gitcafe deployed"
    mv _config.yml _config.yml.gitcafe
    mv _config.yml.github _config.yml
fi
