[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)

# Hello Universe DB

A Spectro Cloud demo application. This is the database that supports the [Hello Universe API](https://github.com/spectrocloud/hello-universe-api).

<p align="center">
<img src="./static/img/spectronaut.png" alt="drawing" width="400"/>
</p>

# Overview

The [Hello Universe](https://github.com/spectrocloud/hello-universe) app includes an [API server](https://github.com/spectrocloud/hello-universe-api) that relies on a Postgres database for storing the number of clicks and other metadata about the clicks such as the browser, os, and timestamp. For your convenience, a Postgres container is available for use.

## Prerequisites

Ensure [Docker Desktop](https://www.docker.com/products/docker-desktop/) is available on your local machine. 

- Use the following command and ensure you receive an output displaying the version number.
    ```
    docker version
    ```
    
Alternatively, you can install [Podman](https://podman.io/docs/installation).

- If you are not running a Linux operating system, create and start the Podman Machine in your local environment. Otherwise, skip this step.
    ```
    podman machine init
    podman machine start
    ```
- Use the following command and ensure you receive an output displaying the installation information.
    ```
    podman info
    ```

## Usage

You can issue the following commands to use the container with Docker.

```
docker pull ghcr.io/spectrocloud/hello-universe-db:1.1.0 && \
docker run -p 5432:5432 ghcr.io/spectrocloud/hello-universe-db:1.1.0
```

If you choose Podman, you can use the following commands.

```
podman pull ghcr.io/spectrocloud/hello-universe-db:1.1.0 && \
podman run -p 5432:5432 ghcr.io/spectrocloud/hello-universe-db:1.1.0
```

The command you issued downloaded the container and exposed port `5432`. The default user name is `postgres` and the password is `password`.

### Database Schema

The database uses the following schema for the `counter` table.

| Field     | Description                                  | Type      |
| --------- | -------------------------------------------- | --------- |
| `id`      | The primary key.                             | Number    |
| `page`    | The page associated with the event.          | Varchar   |
| `date`    | The timestamp of the event.                  | Timestamp |
| `browser` | The client web browser.                      | Varchar   |
| `os`      | The client operating system.                 | Varchar   |

## Image Verification

We sign our images through [Cosign](https://docs.sigstore.dev/signing/quickstart/). Review the [Image Verification](./docs/image-verification.md) page to learn more.
