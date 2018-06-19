#wc=`wc ../$1`
#echo $1 $wc
#echo perl pair.pl cnf 9999 ../$1 $2 $6 $3 1 
perl pair.pl cnf 9999 ../$1 $2 $6 $3 1 > tmp
#echo 123
#echo perl ana.pl tmp '.*' '.*' '.*' '.*' '.*' .. $4 $5
perl ana.pl tmp '.*' '.*' '.*' '.*' '.*' .. $4 $5
