# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.7

FROM ghcr.io/containerbase/buildpack:4.16.0@sha256:71afbe270fcdef75eb363bdeb9191c961c29263bb394fa01723e7df6d45b463d

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
