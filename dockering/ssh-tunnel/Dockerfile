FROM mongo

WORKDIR /src/app

RUN apt update
RUN apt install -y openssh-client
COPY bastion.pem .

ENV LOCAL_BIND_PORT 27016
ENV TARGET_HOST 10.0.0.1
ENV TARGET_PORT 27017
ENV TUNNEL_USERNAME demo-user
ENV TUNNEL_HOST 10.0.0.2

ENTRYPOINT ["ssh", "-tt", "-o", "StrictHostKeyChecking no", "-L", "${LOCAL_BIND_PORT}:${TARGET_HOST}:${TARGET_PORT}", "-i", "/src/app/bastion.pem", "${TUNNEL_USERNAME}@${TUNNEL_HOST}"]
