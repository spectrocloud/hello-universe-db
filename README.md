[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Hello Universe DB

A Spectro Cloud demo application. This is the database that supports the Hello Universe app.

<p align="center">
<img src="./static/img/spectronaut.png" alt="drawing" width="400"/>
</p>

# Overview

The [Hello Universe](https://github.com/spectrocloud/hello-universe) app includes an [API server](https://github.com/spectrocloud/hello-universe-api) that relies on a Postgres database for storing the number of clicks and other metadata about the clicks such as the browser, os, and timestamp. For your convenience, a Postgres container is available for use.

## Usage

To get use the container you can issue the following command to download the container.

```
docker pull ghcr.io/spectrocloud/hello-universe-db:1.0.2 && \
docker run -p 5432:5432 ghcr.io/spectrocloud/hello-universe-db:1.0.2
```

The command you issued downloaded the container and exposed port `5432`. The default user name is `postgres` and the password is `password`.

### Database Schema

The database uses the following schema for the `counter` table.

| Field     | Description                                  | Type      |
| --------- | -------------------------------------------- | --------- |
| `id`      | The primary key.                             | Number    |
| `date`    | The timestamp of the click.                  | Timestamp |
| `browser` | The web browser used to click by the client. | Varchar   |
| `os`      | The operating system used by the client.     | Varchar   |

## Image Verification

We sign our images through [Cosign](https://docs.sigstore.dev/signing/quickstart/). Review the [Image Verification](./docs/image-verification.md) page to learn more.
