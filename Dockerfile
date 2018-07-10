FROM ubuntu
RUN add-apt-repository -y ppa:webupd8team/java && \
apt-get update -y && \
apt-get install oracle-java8-installer && \
rm -rf /var/lib/apt/lists/* && \
rm -rf /var/cache/oracle-jdk8-installer

WORKDIR /data

ENV JAVA_HOME /us/lib/jvm/java-8-oracle

CMD ["bash"]
