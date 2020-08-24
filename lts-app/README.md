# lts-app Docker container

React frontend and Flask backend for LTS application.

## Overview

This service represents one of three containers that comprise the LTS system.
For an overview of the architecture, read the README in the root of this
repository.

## Prerequisites

Docker installed and running.

MacOS or other Unixy OS.

## Submodule note

The app source code is in a submodule now, so make sure you run:

```bash
git submodule init
git submodule update
```

## Instructions: Building and running

The frontend is a React application that needs to be built into a production
build each time the code base is updated. To do this, we build a throw-away
front-end builder container that has all of the software dependencies that are
required for this build phase but not required for the production server.

To build the front-end builder, then build the front-end, then build the
complete app, run the following commands from within the lts-app directory:

```bash
. scripts/build-frontend-builder.sh
. scripts/build-frontend-app.sh
. scripts/build-backend-app.sh
```

*Note*: You can use the "scripts/build.sh" script instead of running each of
these three commands separately, but that's only handy for the initial setup.
Generally, you won't need to run all three scripts, and running just the one you
need will save time:

* Run build-frontend-builder.sh whenever the package.json dependencies change and
  you need different dependencies to build the frontend app.
* Run build-frontend-app.sh when you already have an up to date builder image
  and need to recompile the React app.
* Run build-backend-app.sh whenever you have made changes to the backend app or
  frontend app code base.

To run the container, use:

```bash
. scripts/run.sh
```

Now you should be able to browse to the app at
[localhost:8080](http://localhost:8080).

Without the mongoDB or Blacklab server running, the app will only be partially
functional.
