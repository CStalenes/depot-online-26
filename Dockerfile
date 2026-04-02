FROM ubuntu:22.04
FROM nginx:alpine
RUN apt update -yq \
    && apt install net-tools -yq \
    && apt install nano iproute2 ssh -yq \
    && apt install iputils-ping -y
COPY Website /usr/share/nginx/html/
