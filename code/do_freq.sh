cat $1 | sed -e 's/ /\
/g' | sort | uniq | grep '[^ ]*' > /tmp/words
cat $1 | sed -e 's/ /  /g' | sed -e 's/^/ /' | sed -e 's/$/ /' > /tmp/spaces

for w in `cat /tmp/words`
do
echo -n $w' '
grep -oF ' '$w' ' /tmp/spaces| wc -l
done | sort -rnk 2 > 'freq_'$1
