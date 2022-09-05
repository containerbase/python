# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.6

FROM ghcr.io/containerbase/buildpack:4.13.4@sha256:8a65ca5bcf8a7101537bf9962bac8e69a5be78678ee225d8cd9fb6da7b0cbaa5

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
