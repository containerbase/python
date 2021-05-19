# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.5

FROM ghcr.io/containerbase/buildpack:1.9.0@sha256:7a445e77431e8acb20c48b91727f5509ff94f8019d31635218d4d6e22fd9b2ac

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
