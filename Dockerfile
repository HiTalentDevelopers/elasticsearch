FROM elasticsearch:6.8.2
MAINTAINER Jinzhong Zhang "jinzhong@altomni.com"

# install dependant packages
COPY /hunspell /usr/share/elasticsearch/config/hunspell
