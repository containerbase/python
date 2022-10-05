# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.7

FROM ghcr.io/containerbase/buildpack:4.16.3@sha256:3cba366c6eeaccf30fe64970fafe5fd1a5fc9d8b218f7a473c4642881459664d

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
