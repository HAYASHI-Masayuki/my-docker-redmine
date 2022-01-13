#!/bin/bash

ln -s ../../themes/my_theme data/themes/my_theme
sudo docker-compose exec redmine redmine-install-themes
