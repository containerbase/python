# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.7

FROM ghcr.io/containerbase/buildpack:4.15.1@sha256:07391972cb97938784ecd83e18ddd9d5deab4f164cc26d3219e15a4861f04103

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
