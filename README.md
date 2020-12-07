# Elasticsearch
Elasticsearch with plugins installed

# Hunspell
It supports [elasticsearch Hunspell tokenizer](https://www.elastic.co/guide/en/elasticsearch/reference/6.8/analysis-hunspell-tokenfilter.html).

# Deploy it on single node
* Replace `<userpath>` with the absolute path on your local machine.
* `/<userpath>/elastic/esdata` is the path on your local machine where stores the es data.
* `/<userpath>/elasticsearch/elasticsearch.yml` is the path where stores the es settings. Please use the `elasticsearch.yml` in this repo in normal situations.
* `/<userpath>/elastic/backups` and `/<userpath>/elastic/longterm_backups` are backup folders that stores the es data dump. They are optional and may not be mounted in normal single machine uses.

```
docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name es \
-v /<userpath>/elastic/esdata:/usr/share/elasticsearch/data \
-v /<userpath>/elasticsearch/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
-v /<userpath>/elastic/backups:/mount/backups  \
-v /<userpath>/elastic/longterm_backups:/mount/longterm_backups minghealtomni/elasticsearch:6.8.2
```

# Docker image
Image `minghealtomni/elasticsearch:6.8.2` is public. You do not need any access to download it.
For admin building, run `docker build -t minghealtomni/elasticsearch:6.8.2`
