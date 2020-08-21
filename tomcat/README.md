# blacklab container

The BlackLab server for LTS. 

**Note: BlackLab runs as a Tomcat app, so you may see references to this service referred to as tomcat in parts of LTS.**

## Overview

This service represents one of three containers that comprise the LTS system.
For an overview of the architecture, read the README in the root of this
repository.

## Prerequisites

Docker installed and running.

MacOS or other Unixy OS.

You must also have the "lts.zip" file in the ./s3/ directory. You
can obtain this from the Fortunoff s3 bucket if you have sufficient access.

If you have this data in an s3 bucket, you can pull it with the following script

```bash
. scripts/get-s3-data.sh AWS_PROFILE AWS_BUCKET_NAME
```

