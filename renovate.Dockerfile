#-------------------------
# renovate rebuild trigger
#-------------------------

# makes lint happy
FROM scratch


# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.6.14

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.7.11

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.8.10

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.9.5
