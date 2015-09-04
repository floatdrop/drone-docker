# Docker image for the docker plugin
#
#     docker build --rm=true -t plugins/drone-docker .

FROM rancher/docker

ADD drone-docker /go/bin/
VOLUME /var/lib/docker
ENTRYPOINT ["/go/bin/drone-docker"]
