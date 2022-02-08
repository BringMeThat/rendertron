# Rendertron

[Original README.md](https://github.com/GoogleChrome/rendertron/blob/main/README.md)

## Install

### Nodejs

```shell
# install dependencies
> npm i
# build project
> npm run build
# start project
> npm run start
```

### Docker

bmti = bmt + image

bmtc = bmt + container

```shell
# build docker image
docker build . -t bmti_rendertron
# run docker component with recently created image
docker run --name bmtc_rendertron -d -p 3000:3000 bmti_rendertron
```