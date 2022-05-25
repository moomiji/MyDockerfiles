FROM ubuntu:latest
ENV TZ=Asia/Shanghai
RUN apt update \
    && apt -y install curl bash tzdata fdisk \
    && ln -s /usr/bin/echo /usr/bin/docker \
    && ln -s /usr/bin/echo /usr/bin/systemctl \
    && curl -fsSL https://get.icewhale.io/casaos.sh | bash \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* /root/.cache /tmp/*
WORKDIR /casaOS
CMD ["/usr/local/bin/casaos", "-c", "/casaOS/server/conf/conf.ini"]
