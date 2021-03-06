# Let Them Speak - deployment repo

> A database of Holocaust survivor testimonies.

## Overview

The Let Them Speak app consists of three microservice containers:

- lts-app: Let Them Speak Flask/React web app
- mongodb database for testimony metadata
- tomcat database for transcripts with Corpus Query Language search

## Use of submodules

This repository contains code for building and deploying the services in the
previous section using Docker and Kubernetes. The bulk of the source code for
the Let Them Speak project is the web application itself, which resides in a
[different repository](https://github.com/yaledhlab/let-them-speak), a submodule
you can find in the ./lts-app/let-them-speak directory of this repository.

> Note: Because this uses submodules, you may want to clone this repository
using the syntax `git clone --recurse-submodules`

## Data requirements

Building the tomcat and mongo images require access to internal Fortunoff data.
If you do not have access to this data, you do not need to build these images
from scratch in order to run the containers, as they are hosted in a public
Docker repository. If you just want to run one or more of these components,
you'll probably want to spend most of your time in the ./kubernetes folder in
this repository. You may, of course, customize the web app in the lts-app folder
and its submodule without access to this internal data.

## Project structure

### ./lts-app

Scripts for building and running the front-end web application as a Docker container.

### ./mongo

Scripts for building and running MongoDB service as a container.

**Note: Building the images equires private startup data, but you can run the
public DockerHub image.**

### ./tomcat

Scripts for building and running BlackLab Tomcat app as a container.

**Note: Building the images requires private startup data, but you can run the
public DockerHub image.**

### ./kubernetes

Scripts for orchestrating deployment of all three microservices locally and on AWS.
