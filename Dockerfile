# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.5

FROM ghcr.io/containerbase/buildpack:1.7.0@sha256:ae855a39fc9761ff58930c3e36aef44b134ae005a0c0cdb25dcf89292ccca821

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
