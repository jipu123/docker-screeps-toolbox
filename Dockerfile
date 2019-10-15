FROM node:10.13.0-stretch
VOLUME /screeps
WORKDIR /screeps

COPY "docker-entrypoint.sh" /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["run"]
