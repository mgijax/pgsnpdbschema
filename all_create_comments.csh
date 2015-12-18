#!/bin/csh -fx

#
# Script to call comment scripts
#

cd `dirname $0`

cd comments
pwd
foreach i (*_create.object)
$i 
end

