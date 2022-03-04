# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.2

FROM ghcr.io/containerbase/buildpack:3.7.4@sha256:a62b5c89f5ffe62bd2703d79d6a430f4a4803ad292bb46da04acbf2ec57bf197

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
