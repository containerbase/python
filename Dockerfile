# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.4

FROM ghcr.io/containerbase/buildpack:3.15.3@sha256:5afc91a3cb61dc2dbfee7182c684803fd49add89b15cc508a36ffc13080a7f54

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
