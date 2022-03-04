# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.2

FROM ghcr.io/containerbase/buildpack:3.7.3@sha256:fe182cbe5038cdb1f9378a9c22ba18af4836b670c76e664e848167f14487b1d9

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
