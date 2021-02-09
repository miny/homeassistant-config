#!/bin/sh

docker run --detach \
    --hostname hahost \
    --name="home-assistant" \
    --restart always \
    --env TZ=Asia/Tokyo \
    --volume /home/hass/config:/config \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /dev/bus/usb:/dev/bus/usb \
    --device /dev/vhci:/dev/vhci \
    --privileged \
    --net=host \
    homeassistant/home-assistant:2021.2.1

