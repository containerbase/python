# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.0

FROM ghcr.io/containerbase/buildpack:1.19.4@sha256:5af93f8cfc1fe1378716184661981c2dbe8a3519ca546da7dfc85ad70e2f066c

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
