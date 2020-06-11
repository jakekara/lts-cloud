# Running LTS with Kubernetes

You can run a copy of the production LTS using Kubernetes, locally or on a cloud
service provider like AWS.

## Overview

The LTS app requires 3 containers to be running and talking to each other. They are "orchestrated" with Kubernetes. That just means a specially formatted .yaml file tells Kubernetes where to download the images from, and how to run them so they can talk to each other, and how to expose the web app outside of the Kubernetes cluster.

The .yaml file is all you need, because the container images are publicly hosted on DockerHub, and Kubernetes will take care of downloading the images and building containers from them.

## Prerequisites

In order to run the service locally, first make sure you have:  

0. A copy of lts.yaml from this directory
1. [Docker](https://www.docker.com/products/docker-desktop) installed  
2. [Kubernetes turned on](https://medium.com/@damiannolan/kubernetes-on-docker-for-windows-5ca0c6395668)  
3. [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) CLI tool installed  

You can test this in the command line by running the following commands (the lines starting with "$" are input, the rest are output)

```bash
$ docker --version
Docker version 19.03.8, build afacb8b
$ kubectl version
Client Version: ...
$ kubectl config current-context
docker-desktop
```

If you don't see similar outputs, then you have something wrong with your setup.

## Running

In the same directory as the lts.yaml file, run:

```bash
$ kubectl apply -f lts.yaml
deployment.apps/lts-app created
deployment.apps/lts-mongo created
deployment.apps/lts-blacklab created
service/lts-entrypoint created
service/lts-blacklab created
service/lts-mongo created
service/lts-ingress created
```

If you see the output above, you're golden. Now let's see if the containers are running:

```bash
$ kubectl get pods
NAME                           READY   STATUS    RESTARTS   AGE
lts-app-66bfd9bf95-5t4q2       1/1     Running   0          48s
lts-blacklab-b564bbbb8-svf66   1/1     Running   0          48s
lts-mongo-577d995b4b-mmp7j     1/1     Running   0          48s
```

Now you should be able to view the LTS app at by opening [http://localhost:30082/](http://localhost:30082/) in your web browser.

Make sure to test out the search page and the fragments tree to confirm that not only the web app is functioning but that the mongo and blacklab servers are running.

## Cleanup

To clean up, run:

```bash
$ kubectl delete -f lts.yaml
deployment.apps "lts-app" deleted
deployment.apps "lts-mongo" deleted
deployment.apps "lts-blacklab" deleted
service "lts-entrypoint" deleted
service "lts-blacklab" deleted
service "lts-mongo" deleted
service "lts-ingress" deleted```