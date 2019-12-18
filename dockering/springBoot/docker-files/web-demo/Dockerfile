FROM openjdk:9
VOLUME /tmp
WORKDIR /usr/src
COPY ./application/web-demo.jar web-demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","web-demo.jar"]