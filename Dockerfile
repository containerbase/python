# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.6

FROM ghcr.io/containerbase/buildpack:1.17.0@sha256:3dbc36d40a4d5b983eae8c950720d0ada380d937358b0601e7e0ad0189dc86ff

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
