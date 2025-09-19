#/bin/bash
# 用于给游戏服务器添加 mod，需要先关闭游戏服务器

IMAGE_NAME="hopgoldy-screeps-server"
cd screeps-server

if [ ! -n "$1" ]
then
  echo "安装失败，请指定要安装的 mod"
else
  echo "正在安装 $1"
  docker run -it --rm \
    -v $PWD:/screeps \
    ${IMAGE_NAME} \
    sh -c "
      yarn config set registry http://registry.npmmirror.com & \
      yarn add $1
    "
fi
