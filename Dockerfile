# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.4

FROM ghcr.io/containerbase/buildpack:3.14.4@sha256:6ddd7f558335abdba7be0be6d7ed5c082cf9998f0180d54468e224edaf3f15e1

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
