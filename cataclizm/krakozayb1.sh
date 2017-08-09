#!/bin/sh
for i in `find . -name '*.mp3' -type f`
do
echo $i
iconv -f WINDOWS-1251 -t UTF-8 "$i" > "$i.tmp"
mv -f "$i.tmp" "$i"
done
