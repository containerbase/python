# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.5

FROM ghcr.io/containerbase/buildpack:4.6.2@sha256:49c8a735e1dab701e1a61734f029365c5dfbce81b690cbb5a58d4d18a8b1b4fc

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
