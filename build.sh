#!/bin/bash
#Only required to build the Lambda layer libraries
docker build -t lambda-builder .
docker run --rm -v ${PWD}/bin:/vol lambda-builder
