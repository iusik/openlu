OpenLu
====

Openresty with Lua examples

Table of Contents
=================
* [How to run](#how-to-run)
    * [Dependencies](#dependencies)
    * [Run docker & Develop](#run-docker--develop)
* [Plugins](#plugins)
    * [Current DateTime](#current-datetime)
    * [Realtime replace content](#realtime-replace-content)

How to run
==========

Dependencies
------------
 • [Docker](https://www.docker.com/)
 
 • [OpenResty](https://openresty.org/en/)
 
 • [LuaRocks](https://luarocks.org/)

Run docker & Develop
--------------------
`docker-compose -f docker-dev-compose.yml up`
Starts docker container with openresty and mounted directory `./src`.

`docker-dev-compose.yml` is made to develop new features, and then build image.

Plugins
=======
All plugins are places to directory: `./src/plugins/*`


Current DateTime
----------------
**Name:** currentDateTime

**Path:** `./src/plugins/currentDateTime`

**Description:** Returns current time as json object

Realtime replace content
------------------------
**Name:** replaceContent

**Path:** `./src/plugins/replaceContent`

**Description:** Replace content from upstreams


License
=======
The Laravel framework is open-sourced software licensed under the [MIT license.](LICENSE)