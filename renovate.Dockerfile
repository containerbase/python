#-------------------------
# renovate rebuild trigger
#-------------------------

# makes lint happy
FROM scratch


# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.6.15

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.7.15

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.8.15

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.9.15
