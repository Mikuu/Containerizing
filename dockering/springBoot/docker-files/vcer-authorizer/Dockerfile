FROM openjdk:9
VOLUME /tmp
WORKDIR /usr/src
COPY ./application/vcer-authorizer-0.0.1-SNAPSHOT.jar vcer-authorizer.jar
EXPOSE 8104
ENTRYPOINT ["java","-Dspring.profiles.active=swarm","-jar","vcer-authorizer.jar"]