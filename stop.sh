#/bin/bash
# 用于关闭基础游戏服务器（未使用 mongo）

CONATINER_NAME="screeps-server"

docker container stop ${CONATINER_NAME} && \
docker container rm ${CONATINER_NAME}
