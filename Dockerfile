FROM node:10.16.3-stretch
VOLUME /screeps
WORKDIR /screeps

COPY "docker-entrypoint.sh" /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["run"]
