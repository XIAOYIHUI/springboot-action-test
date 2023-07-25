FROM openjdk:8-jdk-alpine

MAINTAINER 2066238362@qq.com

ENV JVM_OPT -Xms250m -Xmx250m

COPY target/app.jar app.jar
ENTRYPOINT /usr/bin/java -Djava.security.egd=file:/dev/./urandom ${JVM_OPT} -jar app.jar