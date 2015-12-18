#!/bin/sh -f

#
# Drop and re-create database keys
#
#

cd `dirname $0` && . ./Configuration

./key/key_drop.sh
./key/key_create.sh
