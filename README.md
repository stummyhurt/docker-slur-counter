# Slur Counter

Slur Counter is a discord bot that tracks word usage.

## Note

```text
This is my very first discord bot and my very first docker image. Hopefully it works.
```

## Usage

This discord bot can be installed using docker. However its pretty simple to get it working without it. These directions will be for how to get it working with docker.

### First Run

For the first run, you should really see the std output as it will most of the time tell you exactly what is needed to get the bot working. To see the output, use the `-it` flag similar to in this command.

```shell
sudo docker run -it \
    --name slurs \
    -v /slurs/data:/data \
    -v /slurs/config:/config \
    -v /slurs/logs:/logs \
    superminecraftkid64/slur-counter
```

When you're sure its up and running, use `Ctrl+P` then `Ctrl+Q` to hide the output of the container.

### Compose

```yml
version: '3.8'

services:
    slurs:
        container_name: 'slurs'
        image: superminecraftkid64/slur-counter:latest
        volumes:
            - ./config:/config:ro
            - ./data:/data
            - ./logs:/logs
        restart: unless-stopped
```


### Upgrading

```shell
sudo docker stop slurs && \
sudo docker rm slurs && \
sudo docker image pull superminecraftkid64/slur-counter

sudo docker run -it \
    --name slurs \
    -v /slurs/data:/data \
    -v /slurs/config:/config \
    -v /slurs/logs:/logs \
    superminecraftkid64/slur-counter
```

### Build Yourself

If you want to build it yourself, do it like this

#### Build the image

```shell
cd /cloned/repo/slurs-counter
docker build -t slur-counter .
```

#### Run it

```shell
sudo docker run -it \
    --name slurs \
    -v /slurs/data:/data \
    -v /slurs/config:/config \
    -v /slurs/logs:/logs \
    superminecraftkid64/slur-counter
```
