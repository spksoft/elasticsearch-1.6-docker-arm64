FROM arm64v8/openjdk:8-jdk-slim
RUN apt-get update && \
  apt-get install -y wget
RUN cd / && \
  wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.6.0.tar.gz && \
  tar xvzf elasticsearch-1.6.0.tar.gz && \
  rm -f elasticsearch-1.6.0.tar.tar.gz && \
  mv /elasticsearch-1.6.0 /usr/share/elasticsearch
EXPOSE 9200
EXPOSE 9300
CMD ["/usr/share/elasticsearch/bin/elasticsearch"]
