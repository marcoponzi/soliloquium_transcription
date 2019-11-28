cat $1 | sed -e 's/:/ /g' > /tmp/work
source clean_transcript.sh /tmp/work | sed -e 's/[^a-z][^a-z]*/ /g'
