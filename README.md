# npm-register in docker

[![Greenkeeper badge](https://badges.greenkeeper.io/zhuangya/npm-register-docker.svg)](https://greenkeeper.io/)

run [npm-register](https://github.com/jdxcode/npm-register) in docker =)

```bash

$ docker run -v /tmp/htpasswd:/npm-register/htpasswd -p 3000:3000 ya-npm-register:latest

```
