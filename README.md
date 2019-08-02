# Respberrypi Screeps Server

This image is built on the `arm` platform based on the dockerfile of the `ags131/screeps-server`. So you can use this image with exactly the same commands as [ags131/screeps-server](https://hub.docker.com/r/ags131/screeps-server).

# Commands

Here are some common commands, Make sure you are in the directory where you plan to install the server:

**init server**

```
docker run -it --rm -v $PWD:/screeps hopgoldy/respberrypi-screeps-server init
```

**run server**

```
docker run -d --name screeps-server \
  -v $PWD:/screeps \
  -p 21025:21025 hopgoldy/respberrypi-screeps-server
```

**use cli**

```
docker exec -it screeps-server npx screeps cli
```

**add mod**

```
docker run --rm \
  -v $PWD:/screeps hopgoldy/respberrypi-screeps-server \
  yarn add your-screeps-mod-name-here
```

see [docker hub - ags131/screeps-server](https://hub.docker.com/r/ags131/screeps-server) for more details.