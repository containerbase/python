# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.6

FROM ghcr.io/containerbase/buildpack:4.13.6@sha256:33fee2ad705800885bda60022df5c6961d053a5373ec4f286db856e8d16ba5fd

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
