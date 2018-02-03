FROM node:9

LABEL maintainer="Ya Zhuang <zhuangya@gmail.com>"

RUN mkdir /npm-register
WORKDIR /npm-register

COPY package.json /npm-register/
COPY .htpasswd /npm-register/htpasswd

HEALTHCHECK --interval=10m --timeout=3s\
  CMD curl -f http://localhost:3000/ || exit 1

EXPOSE 3000

ENV NPM_REGISTER_STORAGE fs
ENV NPM_REGISTER_FS_DIRECTORY /npm-register
ENV NPM_REGISTER_AUTH_READ true

CMD ["npm", "start"]
