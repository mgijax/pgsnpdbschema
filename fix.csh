#!/bin/csh

foreach i (*.object)
echo $i
ed $i <<END
g/\${SNPBE_DBSERVER} /s///g
g/\${SNPBE_DBNAME} /s///g
.
w
q
END
end

