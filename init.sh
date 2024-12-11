#!/bin/bash

cp -af themes/my_theme data/themes/

sudo docker compose ps | grep Up | grep -q redmine_redmine_1
if [ $? = 0 ]; then
    sudo docker compose exec redmine redmine-install-themes
fi
