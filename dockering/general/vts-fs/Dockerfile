FROM node:10

RUN yarn global add http-server
RUN mkdir -p /exchange/temp
RUN mkdir -p /exchange/file-server
RUN mkdir -p /exchange/file-server/assets
RUN mkdir -p /exchange/file-server/assets/project-team-image
RUN mkdir -p /exchange/file-server/projects

COPY assets/miku-error.webp /exchange/temp

EXPOSE 8123
CMD [ "http-server", "-p 8123", "/exchange"]
