#-------------------------
# renovate rebuild trigger
#-------------------------

# makes lint happy
FROM scratch


# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.6.15

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.7.13

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.8.13

# renovate: datasource=github-releases depName=containerbase/python-prebuild
ENV PYTHON_VERSION=3.9.13
