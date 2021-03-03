# blacklab container

The BlackLab server for LTS.

**Note: BlackLab runs as a Tomcat app, so you may see references to this service referred to as tomcat in parts of LTS. Eventually references to this container will use the 'blacklab' name instead of 'tomcat' as it is more specific.**

## Overview

This service represents one of three containers that comprise the LTS system.
For an overview of the architecture, read the README in the root of this
repository.

## Prerequisites

Docker installed and running.

MacOS or other Unixy OS.

You must have either the Let Them Speak folia.zip in the ./s3 directory or the
pre-built BlackLab index in the ./lts directory. If you have the folia.zip file,
you can generator the lts directory using the build steps in the next section.

You can obtain this from the Fortunoff s3 bucket if you have sufficient access.

If you have this data in an s3 bucket, you can pull it with the following script

```bash
. scripts/get-s3-data.sh AWS_PROFILE AWS_BUCKET_NAME
```

## Building

The build process involves the following steps:

1. Build BlackLab "indexer" image, that contains the core CLI tool.
2. Use the indexer image to create the lts index directory from the folia.zip.
3. Create a server image using the lts index directory.

You can bypass steps 1 and 2 if you have the lts index directory saved somewhere.

### Build the indexer

```bash
bash scripts/build-indexer-image.sh
```

### Run the indexer

This will take a while.

```bash
bash scripts/run-indexer-image.sh
```

### Build the server image

This step requirese the lts directory to exist, hence the reason for the
previous stages.

```bash
bash scripts/build-server-image.sh
```

### Run the server image

To run the server image, use:

```bash
bash scripts/run-server.sh
```

**Note: This and the other two containers components that make up Let Them Speak use the
docker network "lts".**

### Test the server

This will not perform a formal test, but it will send a REST query to the server
via wget that should come back with some testimony contents and a 200 status if
the server is running properly.

While the server is running locally, run:

```bash
bash scripts/test-server.sh
```

You may also want to just get the http status code with:

```bash
bash scripts/test-server.sh | grep HTTP/1.1
```

Or save the output to a test output file:

```bash
bash scripts/test-server.sh > test.out
```
