#
# Dockerfile to cook a build container for deploying Golang Services to Google App Engine
#

FROM google/cloud-sdk:alpine

RUN apk add --no-cache \
    ca-certificates \
    openssl \
    bash \
    musl-dev \
    gcc \
    go

RUN gcloud components install app-engine-go cloud-datastore-emulator

ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
ENV PATH /usr/bin:$PATH

RUN go get \
    google.golang.org/appengine \
    github.com/op/go-logging \
    github.com/onsi/ginkgo/ginkgo \
    github.com/onsi/gomega

