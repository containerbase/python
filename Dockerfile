# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.7

FROM ghcr.io/containerbase/buildpack:4.16.2@sha256:137e73fa7db525078c9ed1b669335c5e47cb89f51097b969027cd0fb915499d5

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
