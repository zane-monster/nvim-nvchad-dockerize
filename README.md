![Dockerfile](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white "dockerfile")
![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white "Arch Linux")
![NeoVim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white "Neovim")
![Vim](https://img.shields.io/badge/VIM-%2311AB00.svg?&style=for-the-badge&logo=vim&logoColor=white "Vim")
[![my youtube channel](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white "碼農問祕")](https://www.youtube.com/channel/UCGry1v6wLt6AeQZ2J_7YgrA)

- Build a docker image with [nvim](https://neovim.io/), [nvchad](https://nvchad.github.io/), [arch linux](https://archlinux.org/)

# Support languages

- ![go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white "Go") protobuf
- ![javascript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E "JavaScript")  ![typescript](https://img.shields.io/badge/TypeScript-007ACC?style=for-the-badge&logo=typescript&logoColor=white "typescript")
- ![html](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white "HTML") ![css3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white "css3") ![json](https://img.shields.io/badge/json-5E5C5C?style=for-the-badge&logo=json&logoColor=white "json" ) ![ESLint](https://img.shields.io/badge/eslint-3A33D1?style=for-the-badge&logo=eslint&logoColor=white "ESLint")
- ![lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white "lua")
- ![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white "C") ![C++](https://img.shields.io/badge/C%2B%2B-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white "C++")
- ![python](https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue "python")
- ninja
- ![bash Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white "bash shell")

# Buld docker image

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

- create a docker volume if no existed volume before

```sh
docker volume create nvim_red_duck
```
## docker compose lifecycle

### first, creating and starting a container

1. start docker compose services

```sh
cd nvim-nvchad-dockerize
docker-compose run --service-ports nvim bash
```

then, the nvim container is creaded and login the shell.

2. connect to the container in other terms

```sh
# get the id of nvim container
docker ps -a
docker exec -it <the nvim container id> bash
```

4. exit in the first term and docker rm ...

### starting an exited container

```sh
docker start -ai <exited container id>
docker exec -it <running container id> bash
```

## docker lifecycle without docker compose

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
2. start nvim, then :GoInstallBinaries, then :qa
3. start nvim, then open a go file(or cpp, js...), then :qa
4. start nvim, then :checkhealth

### update nvchad

```
<lead> + u + u
```

# Arch linux notes

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

# data backup

## cp "old_volume" to "new_volume" 
```sh
docker volume create --name new_volume

docker container run --rm -it \
           -v old_volume:/from \
           -v new_volume:/to \
           alpine ash -c "cd /from ; cp -av . /to"
```

# Windows WSL2
## restart WSL2 for vmmem process

1. shoutdown WSL
```sh
wsl --shutdown
```

2. then, docker-desk ask you restart the WSL2, or right click docker-desk icon and click restart.

## free memeory >2GB by closing WSL2 and docker for other heavy app

1. close docker desktop
2. shoutdown WSL2

# Windows 10 Note

## Install Neovim QT

- [neovim-qt](https://github.com/equalsraf/neovim-qt)

- Maybe reinsall replace update it from old version of neovim-qt

- Maybe remove nvchad first before reinstall neovim-qt

```
# windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

```
choco install neovim
```

## Fix Windows 10 Port Error

### Port Error

```
docker start -ai 590d

Error response from daemon: Ports are not available: exposing port TCP 127.0.0.1:4000 -> 0.0.0.0:0: listen tcp 127.0.0.1:4000: bind: An attempt was made to access a socket in a way forbidden by its access permissions.
```

### Restart Windws winnat

Run comands as administrator

```
net stop winnat
net start winnat
```