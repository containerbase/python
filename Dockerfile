# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.5

FROM ghcr.io/containerbase/buildpack:4.6.4@sha256:de95eb5c8ccf17eba3aa8f0a6f6aa64e3b5c5e14d76a797ff2a07110d254e524

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
