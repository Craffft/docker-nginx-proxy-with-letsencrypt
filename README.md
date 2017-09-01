Docker nginx proxy
==================

Sources from:

- https://github.com/fatk/docker-letsencrypt-nginx-proxy-companion-examples
- https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion
- https://github.com/jwilder/nginx-proxy

Install
-------

Clone this repository and run the following commands to add the required network and generating the nginx proxy docker containers

```
docker network create -d bridge nginx-proxy
docker-compose up -d --build
```

Client Docker Compose config
----------------------------

```bash
services:
  nginx:

    // ...

    environment:
      VIRTUAL_HOST: 'myhost.url'
      VIRTUAL_NETWORK: nginx-proxy
      VIRTUAL_PORT: '80'
      LETSENCRYPT_HOST: 'myhost.url'
      LETSENCRYPT_EMAIL: 'mail@myhost.url'
    networks:
      - proxy-tier
      
    // ...

networks:
  proxy-tier:
    external:
      name: nginx-proxy
```

More informations
-----------------

Proxied SSL support example:
> https://gitlab.com/gitlab-org/omnibus-gitlab/blob/master/doc/settings/nginx.md#supporting-proxied-ssl
