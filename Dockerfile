# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.5

FROM ghcr.io/containerbase/buildpack:1.6.0@sha256:ae411ab0b74176c3db1d9213cd5d40e57b03b77d56375702ee05379a437ac742

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
