#-------------------------
# renovate rebuild trigger
#-------------------------

# makes lint happy
FROM scratch


# renovate: datasource=github-releases lookupName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.6.13

# renovate: datasource=github-releases lookupName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.7.10

# renovate: datasource=github-releases lookupName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.8.9

# renovate: datasource=github-releases lookupName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.9.4
