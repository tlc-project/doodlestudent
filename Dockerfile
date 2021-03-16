FROM node

COPY front /front

WORKDIR /front

RUN npm install
RUN npm run build

FROM bunkerity/bunkerized-nginx

COPY --from=0 /front/dist/tlcfront /www
