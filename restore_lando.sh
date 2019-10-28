#!/bin/sh

lando stop;

lando poweroff;

lando --clear;

docker kill $(docker ps -q) ;

docker rm $(docker ps -a -q) ;

docker rmi $(docker images -q) ; 

lando start ;

