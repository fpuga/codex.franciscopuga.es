#!/bin/sh
mkdir -p gh_pages
docker run --rm -e CARDS=true -v "${PWD}":/docs squidfunk/mkdocs-material build
# Add symlink to preserve old feed url operation
cd gh_pages && mv feed_rss_created.xml feed.xml
