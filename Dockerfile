# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.6

FROM ghcr.io/containerbase/buildpack:4.11.0@sha256:3d079dfe09510b539c0a96941e08c2e727c611ed2fa31be6aed1a41959d853f8

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
