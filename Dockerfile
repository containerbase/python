# renovate: datasource=github-releases depName=containerbase/python-prebuild
ARG PYTHON_VERSION=3.10.6

FROM ghcr.io/containerbase/buildpack:4.13.0@sha256:46f4c73cda8fefcdbddcb26714a8a43db6b3489397d931059e3eb3bb4a510377

ARG PYTHON_VERSION
RUN install-tool python

LABEL org.opencontainers.image.source="https://github.com/containerbase/python" \
      org.opencontainers.image.version="${PYTHON_VERSION}"

USER 1000
