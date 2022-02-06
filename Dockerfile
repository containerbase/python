# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.2

FROM ghcr.io/containerbase/buildpack:3.3.3@sha256:e1ce413567fe80cb73221d3d20a13067e173c00ad972e96176891c6958d65bd8

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
