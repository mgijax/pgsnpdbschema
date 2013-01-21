#!/bin/sh

cd `dirname $0` && . ../Configuration

#
# edit "truncate" tables from sybase to postgres 
#

#
# copy snpdbschema/table/*_truncate.object to postgres directory
#
cd ../table
cp ../../snpdbschema/table/*truncate.object .

#
# convert each snp-format table script to a postgres script
#

for i in *truncate.object
do

ed $i <<END
g/csh -f -x/s//sh/g
g/source/s//./g
g/truncate table /s//truncate table snp./g
/cat
d
a
cat - <<EOSQL | \${PG_DBUTILS}/bin/doisql.csh \$0

.
/^use
d
d
/go
d
a
;
.
/checkpoint
;d
a
EOSQL
.
w
q
END

done

