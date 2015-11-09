#!/bin/csh -f

#
# Drop and re-create database triggers, stored procedures 
#
#

cd `dirname $0` && source ./Configuration

./key/key_drop.csh
./key/key_create.csh
./procedure/procedure_drop.csh
./procedure/procedure_create.csh
