FROM alpine:3.11

ENV CLOUD_NUKE_VERSION="v0.1.13"

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

VOLUME /data

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

WORKDIR /data

ENTRYPOINT ["cloud-nuke"]

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="cloud-nuke" \
      "org.label-schema.base-image.name"="docker.io/library/alpine" \
      "org.label-schema.base-image.version"="3.11" \
      "org.label-schema.description"="cloud-nuke in a container" \
      "org.label-schema.url"="https://github.com/gruntwork-io/cloud-nuke" \
      "org.label-schema.vcs-url"="https://github.com/FXinnovation/fx-docker-cloud-nuke" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.cloud-nuke.version"=$CLOUD_NUKE_VERSION \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="docker run --rm $(pwd):/data fxinnovation/cloud-nuke --help"
