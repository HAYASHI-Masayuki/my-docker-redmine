Docker Redmine環境
================================================================================

https://github.com/sameersbn/docker-redmine ベース。


## ほかの環境から移行する場合

### データベース移行

```
sudo docker compose exec -T mysql mysql redmine_production < database.sql
```

さらに、データベースのバージョンが違う場合は、

```
sudo docker compose exec redmine sudo -u redmine -H bundle exec rake db:migrate RAILS_ENV=production
```


### アップロードファイル移行

./data/files/ 以下にファイルを丸ごとコピー。


