ARG ES_VER=8.15.2
FROM elasticsearch:${ES_VER}

ENV ES_VER=${ES_VER}
# install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v${ES_VER}/elasticsearch-analysis-pinyin-${ES_VER}.zip https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${ES_VER}/elasticsearch-analysis-ik-${ES_VER}.zip https://github.com/alexklibisz/elastiknn/releases/download/${ES_VER}.1/elastiknn-${ES_VER}.1.zip
# copy dictionaries
COPY /hunspell /usr/share/elasticsearch/config/hunspell
