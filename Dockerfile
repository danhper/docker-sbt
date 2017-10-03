FROM openjdk:8-jdk

RUN apt-get update
RUN apt-get install -y apt-transport-https

RUN echo "deb https://dl.bintray.com/sbt/debian /" >> /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update
RUN apt-get install -y sbt
RUN sbt sbtVersion

ENTRYPOINT ["sbt"]
