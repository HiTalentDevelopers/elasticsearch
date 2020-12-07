# Elasticsearch
Elasticsearch with plugins installed

# Hunspell
It supports [elasticsearch Hunspell tokenizer](https://www.elastic.co/guide/en/elasticsearch/reference/6.8/analysis-hunspell-tokenfilter.html).

# Deploy it on single node
Replace `<userpath>` with the absolute path on your local machine.

```
docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name es \
-v /<userpath>/elastic/esdata:/usr/share/elasticsearch/data \
-v /<userpath>/elastic/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
-v /<userpath>/elastic/hunspell:/usr/share/elasticsearch/config/hunspell \
-v /<userpath>/elastic/backups:/mount/backups  \
-v /<userpath>/elastic/longterm_backups:/mount/longterm_backups minghealtomni/elasticsearch:6.8.2
```

# Docker build
`docker build -t minghealtomni/elasticsearch:6.8.2`
