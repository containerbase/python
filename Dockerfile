# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.3

FROM ghcr.io/containerbase/buildpack:3.12.0@sha256:6b3e137a4dc3e92c5488d9238f96b05419359fcc8200f8ee749bb3cdde90e52e

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
