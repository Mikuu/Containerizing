FROM v4tech/imagemagick
FROM openjdk:9
VOLUME /tmp
WORKDIR /usr/src
RUN mkdir database
RUN mkdir images
COPY ./application/vcer-slave-0.0.1-SNAPSHOT.jar vcer-slave.jar
EXPOSE 8001
ENTRYPOINT ["java","-Dspring.profiles.active=docker","-jar","vcer-slave.jar"]