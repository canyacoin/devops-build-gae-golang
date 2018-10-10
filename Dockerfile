#
# Dockerfile to cook a build container for deploying Golang Services to Google App Engine
#

FROM golang:1.11.1-stretch

RUN echo "deb http://packages.cloud.google.com/apt cloud-sdk-stretch main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN apt-get update && apt-get install -y \
    google-cloud-sdk \
    google-cloud-sdk-app-engine-go \
    google-cloud-sdk-datastore-emulator \
    build-essential \
    wget \
    git

RUN go get \
    google.golang.org/appengine \
    github.com/op/go-logging \
    github.com/onsi/ginkgo/ginkgo \
    github.com/onsi/gomega
