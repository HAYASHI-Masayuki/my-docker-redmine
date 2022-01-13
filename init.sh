#!/bin/bash

ln -s ../../themes/my_theme data/themes/
sudo docker-compose exec redmine redmine-install-themes
