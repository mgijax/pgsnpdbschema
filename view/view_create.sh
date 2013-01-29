#!/bin/sh

#
# Object Group Script
#
# Executes all *_create.logical scripts
#

cd `dirname $0` && . ./Configuration

for i in \
SNP_create.logical
do
$i $*
done

