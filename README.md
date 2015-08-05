# Slack on Docker

[*Scudcloud*](https://github.com/raelgc/scudcloud) is linux client for Slack. This is a Docker container that runs scudcloud.

To run it, you just have to execute the following command:
```
  docker run -it -e DISPLAY  --net=host  \
    -v /var/lib/dbus/machine-id:/var/lib/dbus/machine-id \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.Xauthority:/root/.Xauthority \
    --name slack
     quay.io/ipedrazas/slack
```

Happy slacking!
