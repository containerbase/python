# renovate: datasource=github-releases lookupName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.4

FROM ghcr.io/containerbase/buildpack:1.3.0@sha256:8d0bd58e02d271304e6ab378aede3927dd2cfb98cdae59d0e8bf6f66a5393963

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
