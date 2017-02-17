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

More informations
-----------------

Proxied SSL support example:
> https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/doc/settings/nginx.md#supporting-proxied-ssl
