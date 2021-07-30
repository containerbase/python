# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.6

FROM ghcr.io/containerbase/buildpack:1.13.0@sha256:8556dd89e7635009cecfb1212185f5019f4855916e730aaa3e026767228bad39

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
