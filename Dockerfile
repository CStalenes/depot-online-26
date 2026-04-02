FROM ubuntu:22.04
FROM nginx:latest
RUN apt update -yq \
    && apt install net-tools -yq \
    && apt install nano iproute2 ssh -yq \
    && apt install iputils-ping -y
