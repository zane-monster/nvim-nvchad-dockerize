- Build a docker image with [nvim](https://neovim.io/), [nvchad](https://nvchad.github.io/), [arch linux](https://archlinux.org/)

# buld docker image

1. update the base image

```sh
docker pull archlinux:base-devel
# list images
docker images
# clean old images
docker image rm a570
```

2. build the image

```sh
docker build -f Dockerfile.nvchad.build -t zane/nvchad .
```

# How to use this docker image

## docker compose lifecycle

### first, creating and starting a container

1. start docker compose services

```sh
docker-compose up
```

then, the nvim container is creaded and in exited status.

2. connect to the service nvim in the first term

```sh
docker-compose run nvim bash
```

the nvim container is running, now.

3. connect to the container in other terms

```sh
# get the id of nvim container
docker ps -a
docker exec -it <the nvim container id> bash

# Invalid command in windows ???
docker-compose exec nvim bash
docker-compose exec --entrypoint /bin/bash nvim
```

4. exit in the first term and docker rm ...

### starting an exited container

```sh
docker start -ai <exited container id>
docker exec -it <running container id> bash
```

## docker lifecycle

1. start a new container in the first term

```sh
docker run -it -p 3000:3000 -p 4000:4000 -p 8000:8000 -p 9000:9000 -v c:\a:/home/nv/a -v c:\Users\username\.ssh:/home/nv/.ssh -v "//var/run/docker.sock:/var/run/docker.sock" zane/nvchad

sudo chmod 600 /home/nv/.ssh/config
```

2. start a exited container

```sh
docker start -ai <exited container id>
```

3. connect to the running container

```sh
docker exec -it <running container id> bash

# as root
docker exec -u 0  -it <running container id> bash
```

4. exit in the first term and docker rm ...

## After a contain first running

### init nvim

1. start nvim, then :qa
2. start nvim, then :qa
3. start nvim, then :GoInstallBinaries, then :qa
4. start nvim, then open a go file(or cpp, js...), then :qa
5. start nvim, then :checkhealth

### update nvchad

```
<lead> + u + u
```

# arch linux notes

## set mirrorlist

```sh
# in docker # as root
reflector -f 5 --country 'United States' --protocol https --sort rate  --download-timeout 2 --save /etc/pacman.d/mirrorlist

reflector -f 5 --country 'United States' \
--protocol https \
--sort rate \
--download-timeout 2 \
--completion-percent 100 \
--save /etc/pacman.d/mirrorlist
```
