FROM debian:jessie

MAINTAINER "Tarampampam <tarampampam@users.noreply.github.com>"
LABEL Description="Container for running laravel/dusk test" Vendor="Tarampampam" Version="0.1"

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true
ENV INITRD No
ENV LOCALE en_US.UTF-8


