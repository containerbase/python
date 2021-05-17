# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.5

FROM ghcr.io/containerbase/buildpack:1.6.1@sha256:65d2813db50ca95c578cb1fe8726ee4debbbfedefc14278167d9261ca1e5c3cc

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
