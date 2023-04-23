FROM elasticsearch:8.7.0
MAINTAINER Jinzhong Zhang "jinzhong@altomni.com"

# install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v8.7.0/elasticsearch-analysis-pinyin-8.7.0.zip https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v8.7.0/elasticsearch-analysis-ik-8.7.0.zip
# copy dictionaries
COPY /hunspell /usr/share/elasticsearch/config/hunspell
