# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.5

FROM ghcr.io/containerbase/buildpack:4.3.0@sha256:060fbf7bb736ecde6f166da6b1bb8416fef930e1a496b39a711b33848b2d8997

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
