#!/bin/csh -f

#
# Script to call all bind and create csh scripts
# Order is important!
#

cd `dirname $0`

foreach i (table key index view)
cd $i
foreach j (*_create.sh)
$j $*
end
cd ..
end

