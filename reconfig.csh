#!/bin/csh -f

#
# Drop and re-create database triggers, stored procedures and views
#
#

cd `dirname $0` && source ./Configuration

./key/key_drop.csh
./key/key_create.csh
./view/view_drop.csh
./view/view_create.csh
./procedure/procedure_drop.csh
./procedure/procedure_create.csh
