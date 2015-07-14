FROM   ubuntu:latest
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>

RUN apt-get update && apt-get install -y \
    python-software-properties \
    software-properties-common \
    dbus-x11 \
    --no-install-recommends

RUN add-apt-repository -y ppa:rael-gc/scudcloud && \
    apt-get update && \
    apt-get install scudcloud -y

RUN dpkg-divert --add --rename \
  --divert /opt/scudcloud/resources/scudcloud.png.real \
  /opt/scudcloud/resources/scudcloud.png
  
COPY slack-2014.png /opt/scudcloud/resources/scudcloud.png
RUN chmod +r /opt/scudcloud/resources/scudcloud.png

ENV QT_X11_NO_MITSHM=1

CMD ["/usr/bin/scudcloud"]
