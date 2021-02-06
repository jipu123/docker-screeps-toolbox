#! /bin/bash
# 用于构建游戏运行时镜像

IMAGE_NAME="hopgoldy-screeps-server"

docker build -t ${IMAGE_NAME} .
