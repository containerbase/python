# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.9.6

FROM ghcr.io/containerbase/buildpack:1.16.0@sha256:5ce3976dae1a51ec8101445b316e24ee5d315d8663d38b877722536813a773e4

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
