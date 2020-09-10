# OpenLu

Openresty with Lua examples   

## How to run

#### Run docker & Develop
`docker-compose -f docker-dev-compose.yml up`
Starts docker container with openresty and mounted directory `./src`.

`docker-dev-compose.yml` is made to develop bew features, and then build image.


## Plugins
All plugins are places to directory: `./src/plugins/*`


### Current DateTime
**Name:** currentDateTime

**Path:** `./src/plugins/currentDateTime`

**Description:** Returns current time as json object


