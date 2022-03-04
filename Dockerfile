# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.2

FROM ghcr.io/containerbase/buildpack:3.8.0@sha256:76fb6e1091b34c81b1f8b1f6b6e00f2ad77316865648672f6299d5fc6ff6e9d8

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
