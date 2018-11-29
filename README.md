Repository for golang with gotty and vim.

## Starting a container

`docker run -d --name gotty --rm -p 8080 arunsworld/golang:latest`

`docker run -d --name gotty --rm -p 8080 arunsworld/golang:latest -c user:pass bash`

## What do you get?

* A golang environment.
* With vim pre-configured with vimrc that has `fatih/vim-go` plugin.
* `gotty` installed and running on port 8080 which is exposed.
