#!/bin/csh -f

#
# Script to call all drop scripts
# Order is important!
#

cd `dirname $0`

foreach i (index key table)
cd $i
foreach j (*_drop.object)
$j $*
end
cd ..
end

