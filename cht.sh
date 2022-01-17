#!/usr/bin/env bash
languages=`echo "golang lua typescript python" | tr ' ' '\n'`
core_utils=`echo "find mv sed awk" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if echo $languages | grep -qs $selected; then
    curl cht.sh/$selected/`echo $query | tr ' ' '+'`
else
    curl cht.sh/$selected~$query
fi
