#!/bin/sh

#read host
#read ip
#
## we only need the last oid/val pair
#while read oid val
#do
	#var1="$oid"
	#var2="$val"
#done
#
#TS=`date +"%Y-%m-%d %H:%M:%S"`
## send it into the database with a traditional db_insert.pl
#echo -e "$TS\t$host\t$1\t$var1\tTRAP!: $var2"|/path_to_logzilla/scripts/db_insert.pl
## - for debug (below)
## echo -e "$TS\t$host\t$1\t$var1\tTRAP!: $var2">/tmp/trap.log

read host
read ip
vars=

while read oid val
do
    if [ "$vars" = "" ]
    then
        vars="$oid = $val"
    else
        vars="$vars, $oid = $val"
    fi
done

TS=`date +"%Y-%m-%d %H:%M:%S"`
echo -e "$TS\t$host\t$1\tSNMP\t$vars" |/path_to_logzilla/scripts/db_insert.pl
echo -e "$TS\t$host\t$1\tSNMP\t$vars" >/tmp/trap.log
