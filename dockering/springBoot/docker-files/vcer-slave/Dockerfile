FROM openjdk:8-alpine
VOLUME /tmp
WORKDIR /usr/src
RUN apk --update add imagemagick
RUN mkdir database
RUN mkdir images
COPY ./application/vcer-slave-0.0.1-SNAPSHOT.jar vcer-slave.jar
EXPOSE 8101
ENTRYPOINT ["java","-Dspring.profiles.active=swarm","-jar","vcer-slave.jar"]
