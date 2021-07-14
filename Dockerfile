# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.6

FROM ghcr.io/containerbase/buildpack:1.10.2@sha256:5853ca42be2f230ba9282631c4250c08797be832e88044f1f8d59a5a8158d87a

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
