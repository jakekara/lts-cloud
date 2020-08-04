# mongo Docker container

The mongo server for LTS.

## Overview

This service represents one of three containers that comprise the LTS system.
For an overview of the architecture, read the README in the root of this
repository.

## Prerequisites

Docker installed and running.

MacOS or other Unixy OS.

You must also have the "lts.archive.zip" file in the mongo/s3/ directory. You
can obtain this from the Fortunoff s3 bucket if you have sufficient access.

If you have this data in an s3 bucket, you can pull it with the following script

```bash
. scripts/get-s3-data.sh AWS_PROFILE AWS_BUCKET_NAME
```

## Instructions: Building and running

This container packages the data directly into the container image. Storing data
directly in a container would not normally be a wise practice, but this data
never changes, and the database is read-only in production, since this database
is all hand-curated by the project owner. This results in large image sizes.

To build the container, run the following commands from the mongo directory:

```bash
. scripts/build.sh
```

This will take quite a while.

```bash
. scripts/run.sh
```

