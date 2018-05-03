# use a node base image
FROM node:8-onbuild

# set maintainer
LABEL maintainer "a.tanaphon@gmail.com"

# set a helth check
HEALTHCHECK --interval=30s \
            --timeout=30s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
