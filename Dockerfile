# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.4

FROM ghcr.io/containerbase/buildpack:3.16.0@sha256:5d460046b636c652391853caf7a489c0bb408c7f1d86c8ce704a096f0b79845f

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
