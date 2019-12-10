FROM openjdk:9
VOLUME /tmp
WORKDIR /usr/src
COPY ./application/vcer-master-0.0.1-SNAPSHOT.jar vcer-master.jar
EXPOSE 8100
ENTRYPOINT ["java","-Dspring.profiles.active=docker","-jar","vcer-master.jar"]