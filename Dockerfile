# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.2

FROM ghcr.io/containerbase/buildpack:3.4.1@sha256:6bc1828e2f3008d35b05fd2b98558f8b4c7ba301af9702609e032e80efbb4781

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
