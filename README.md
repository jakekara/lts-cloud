# Let Them Speak

> A database of Holocaust survivor testimonies.

## Overview

This app consists of three microservice containers:

- lts-app: A Flask/React web app
- mongodb database for testimony metadata
- blacklab database for transcripts with Corpus Query Language search

These images may be orchestrated using Kubernetes.

## Project structure

### ./lts-app

Source code for Flask/React app and scripts for building and running as a Docker
container.

### ./mongo

Scripts for building and running MongoDB service as a container.

**Note: Building the images equires private startup data, but you can run the
public DockerHub image.**

### ./tomcat

Scripts for building and running BlackLab Tomcat app as a container.

**Note: Building the images equires private startup data, but you can run the
public DockerHub image.**

### ./kubernetes

Scripts for orchestrating deployment of all three microservices locally and on AWS.