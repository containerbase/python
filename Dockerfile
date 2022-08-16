# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.6

FROM ghcr.io/containerbase/buildpack:4.10.2@sha256:4163939cf793216d33dc5ba567136158b8b1c8f15ad8bd7c556f582666d865b0

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
