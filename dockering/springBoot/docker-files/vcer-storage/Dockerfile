FROM openjdk:9
VOLUME /tmp
WORKDIR /usr/src
COPY ./application/vcer-storage-0.0.1-SNAPSHOT.jar vcer-storage.jar
EXPOSE 8002
ENTRYPOINT ["java","-Dspring.profiles.active=docker","-jar","vcer-storage.jar"]