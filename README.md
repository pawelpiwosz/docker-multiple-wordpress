## Purpose

Test environment for installation of multiple WordPress instances.

## Environment preparation

In order to create test environment, run

`docker-compose up -d --build`

## Current state

Right now, the environment contains 3 WP instances without dynamic scaling.

## Used containers

As official WordPress container wasn't work for me very well, I used their
Dockerfile with my modification in order to achieve possibility of using
multiple WP containers.

HAProxy is built with checks, but this is something what need improvements

## Passwords, etc

Currently passwords are stored in .env file. As it is a test environment, I do
not see any problem with that.

## URLs

Wordpress site is available here `localhost:8080`  
HAProxy statistic page is available here `localhost:8082/stats`, user and
password is `admin`

## To do

* better http check for HAProxy
* dynamic scaling
