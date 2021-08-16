# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.6

FROM ghcr.io/containerbase/buildpack:1.15.0@sha256:e506454ba201d52df4d75fdf2b21f2c54a92dce501f512427c54680c6cbd3bb7

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
