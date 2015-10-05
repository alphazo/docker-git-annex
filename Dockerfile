FROM debian:unstable

MAINTAINER Alphazo <alphazo@gmail.com>

VOLUME /sourcedir /backupdir
WORKDIR /git-annex

#ENTRYPOINT ["/usr/bin/borgctrl.sh"]
CMD ["--help"]

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update -y \
    && apt-get install -y \
        git-annex \
    && apt-get clean -y
