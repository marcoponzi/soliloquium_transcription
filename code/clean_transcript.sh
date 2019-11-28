cat $1 | tr '[:upper:]' '[:lower:]' | sed -e 's/\./ /g' | sed -e 's/{[^}]*}/ /g' | sed -e 's/<[^>]*>/ /g' | grep '[a-z]' | sed -e 's/,//g'|\
  tr '\n' 'W' | sed -e 's/\([^ ][^ ]*\)[-:=] *W/W\1/g' | tr 'W' '\n' |  sed -e 's|[/%]| |g' | sed -e 's/  */ /g' | sed -e 's/ $//'
