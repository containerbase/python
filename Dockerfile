# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.3

FROM ghcr.io/containerbase/buildpack:3.12.3@sha256:8a669452a4d3f13a521835b435c6a747e806434c1bf5707716f9a9e0a34cbfce

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
