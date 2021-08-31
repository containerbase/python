# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.7

FROM ghcr.io/containerbase/buildpack:1.17.1@sha256:86eaec5d77370b75232e7bce601718244f2e8440c4c573ae50f9e41cf9ccbf41

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
