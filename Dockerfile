# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.11.0

FROM ghcr.io/containerbase/buildpack:4.16.8@sha256:7fbb21fe2441a497b12e1fb3076e6799fcf9a37189906f4500dfff559591eb99

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
