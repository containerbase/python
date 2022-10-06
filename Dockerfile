# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.7

FROM ghcr.io/containerbase/buildpack:4.16.4@sha256:fc7c5472ca4b2fd3d0cca406ac2c3dc450738cb22da6069d523625296c52de1e

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
