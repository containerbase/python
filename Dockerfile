# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.5

FROM ghcr.io/containerbase/buildpack:1.8.0@sha256:3adec8196bcec7d1b822c24938347edaf9572d575c71e13aefa22fd80bbeb2ef

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
