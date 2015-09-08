# docker-alpine-init

A very small Docker image based on [Alpine Linux](https://github.com/gliderlabs/docker-alpine)

## Usage

Example for `docker-alpine-init` as data container for `gitlab-runner`:

```
docker build -t docker-alpine-init https://github.com/dex4er/docker-alpine-init.git
docker run -d --restart always --name gitlab-runner-config -v /etc/gitlab-runner docker-alpine-init
docker exec -it gitlab-runner-config env TERM=xterm mcedit /etc/gitlab-runner/config.ru
docker run -d --restart always --name gitlab-runner --volumes-from gitlab-runner-config gitlab/gitlab-runner:latest
```
