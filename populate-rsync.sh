#!/bin/bash

mkdir -p /local/repos
mkdir -p /local/mirrors
mkdir -p /local/repos/phpdoc

cd /local/repos
git clone https://github.com/php/web-php.git phpweb
git clone https://github.com/php/phd.git phpdoc/phd

cd /local/mirrors
git clone https://github.com/php/web-doc-editor.git doc-editor
git clone https://github.com/php/web-doc.git docweb
git clone https://github.com/php/web-pecl.git peclweb
git clone https://github.com/php/web-analytics.git php-analytics-web
git clone https://github.com/php/web-bugs.git php-bugs-web
git clone https://github.com/php/web-downloads.git php-downloads-web
git clone https://github.com/php/web-gcov.git php-gcov-web
git clone https://github.com/php/doc-gtk.git php-gtk-doc
git clone https://github.com/php/web-gtk.git php-gtk-web
git clone https://github.com/php/web-master.git php-main-web
git clone https://github.com/php/web-master.git php-master-web
git clone https://github.com/php/web-news.git php-news-web
git clone https://github.com/php/web-people.git php-people-web
git clone https://github.com/php/web-shared.git php-shared
git clone https://github.com/php/web-wiki.git php-wiki
git clone https://github.com/php/web-qa.git qaweb
git clone https://github.com/php/web-shared.git shared
git clone https://github.com/php/systems.git systems
git clone https://github.com/php/web-pres2.git talks

for i in php-main-web docweb php-people-web qaweb php-gcov-web php-master-web php-news-web php-bugs-web php-gtk-web talks; do
    cd /local/mirrors/$i
	git clone https://github.com/php/web-shared.git shared
done
