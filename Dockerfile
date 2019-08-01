FROM node:8.11.1-stretch
VOLUME /screeps
WORKDIR /screeps

COPY "docker-entrypoint.sh" /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["run"]
