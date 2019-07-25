FROM openjdk:9
VOLUME /tmp
WORKDIR /usr/src
COPY ./application/vcer-authorizer-0.0.1-SNAPSHOT.jar vcer-authorizer.jar
EXPOSE 8004
ENTRYPOINT ["java","-Dspring.profiles.active=docker","-jar","vcer-authorizer.jar"]