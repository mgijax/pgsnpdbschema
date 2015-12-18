#!/bin/csh -f

#
# Script to call all create scripts
# Order is important!
#

cd `dirname $0`

foreach i (table key index comments)
cd $i
foreach j (*_create.object)
$j $*
end
cd ..
end

