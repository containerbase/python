# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.5

FROM ghcr.io/containerbase/buildpack:3.17.5@sha256:a2f498501eeba52563dd290c75a5ec5eff767ae534564502ca3ef3306e53f488

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
