# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.4

FROM ghcr.io/containerbase/buildpack:3.14.0@sha256:8b09ea0b53925d5ea3ce61b2666e1bd39994717671a129659a916b4f984d7568

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
