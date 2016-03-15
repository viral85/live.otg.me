#!/bin/bash

git submodule add https://github.com/viral87/site7-live.otg.me.git sites/site7-live.otg.me
cp -a sites/all/* sites/site7-live.otg.me/
echo "$sites['site7-live.otg.me'] = 'site7-live.otg.me';" >> sites/sites.php
cp sites/default/default.settings.php sites/site7-live.otg.me/settings.php
echo -e "$databases['default']['default'] = array(\n\t'database' => 'databasename',\n\t'username' => 'usename',\n\t'password' => 'password',\n\t'host' => 'localhost or remote ip ',\n\t'port' => '',\n\t'driver' => 'mysql',\n\t'prefix' => 'subsiteprefix'," >> sites/site7-live.otg.me/settings.php
chmod -R 777 sites/site7-live.otg.me
cd sites/site7-live.otg.me/
git add .
git commit -m "message"
git push origin master
