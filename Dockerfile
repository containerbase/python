# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.4

FROM ghcr.io/containerbase/buildpack:3.14.6@sha256:271823208aa91c7d1a7b897035b79ad8b374c4db20ab522607ae144d0495a27f

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
