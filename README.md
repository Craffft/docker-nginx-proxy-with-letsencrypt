Docker nginx proxy
==================

Sources from https://github.com/fatk/docker-letsencrypt-nginx-proxy-companion-examples

Install
-------

Clone this repository and run the following commands to add the required network and generating the nginx proxy docker containers

```
docker network create -d bridge nginx-proxy
docker-compose up -d
```
