FROM alpine AS build-dev

COPY . /isubata
RUN rm -rf /isubata/.git

FROM nginx:1.10

COPY --from=build-dev /isubata /home/isucon/isubata
#COPY --from=build-dev /isubata/files/app/nginx.conf /etc/nginx/conf.d/isucon.conf
COPY ./docker/web/isucon.conf /etc/nginx/conf.d/isucon.conf
