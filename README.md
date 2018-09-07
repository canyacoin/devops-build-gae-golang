# gae-golang-build-container

Cook a build container for deploying Golang Services to Google App Engine (Standard or Flexible)

## Create a new Docker image

#### Prerequesites

- [Docker](https://docs.docker.com/install/#releases)

#### Build

```
docker build --squash . -t registry.gitlab.com/canya-com/gae-golang-build-container:X.X # <----- set the tag version plus one
```

Take note of the built imageID

#### Push

```
docker push registry.gitlab.com/canya-com/gae-golang-build-container:X.X <----- set the tag version from the squash step
```

## Running locally

```
docker run -it --entrypoint /bin/bash <imageID>
```