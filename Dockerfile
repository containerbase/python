# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.3

FROM ghcr.io/containerbase/buildpack:3.12.4@sha256:3c390d60321ee6678d88460c69f3a647556e0b65cc70ff6e30683a9804f59a2a

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
