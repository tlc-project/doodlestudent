FROM node

COPY front /front

WORKDIR /front

RUN npm install -g @angular/cli
RUN npm install
RUN npm build .

FROM bunkerity/bunkerized-nginx

COPY /front/dist/tlcfront /www
