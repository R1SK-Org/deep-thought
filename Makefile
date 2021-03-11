# Dockerfile vars

# ENV
IMAGENAME=deep-though
REPO=
# IMAGEFULLNAME=${REPO}/${IMAGENAME}:${KUBECTL_VERSION}
IMAGEFULLNAME=${IMAGENAME}:latest

.PHONY: help build push all

help:
	@echo "Makefile commands:"
	@echo "build"
	@echo "push"
	@echo "all"

.DEFAULT_GOAL := run

run:
	@json-server --watch db.json

# Docker stuff for laters
# build:
# 	@docker build --pull -t ${IMAGEFULLNAME} .

# rebuild:
# 	@docker build --pull --no-cache -t ${IMAGEFULLNAME} .

# push:
# 	@docker push ${IMAGEFULLNAME}

# build-push: build push
