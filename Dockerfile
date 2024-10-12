ARG ES_VER
FROM elasticsearch:${ES_VER}
# re-collect building args
ARG ES_VER
ENV PINYIN_VER=8.12.2
# install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
    https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v$PINYIN_VER/elasticsearch-analysis-pinyin-$PINYIN_VER.zip \
    https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v${PINYIN_VER}/elasticsearch-analysis-ik-${PINYIN_VER}.zip \
    https://github.com/alexklibisz/elastiknn/releases/download/${ES_VER}.1/elastiknn-${ES_VER}.1.zip
# copy dictionaries
COPY /hunspell /usr/share/elasticsearch/config/hunspell
