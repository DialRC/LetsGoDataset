#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Illigal number of parameters! Please retry!"
    exit 1
fi

arg1="$1"
arg2="$2"
year1=${arg1:0:4}
month1=${arg1:4}
year2=${arg2:0:4}
month2=${arg2:4}

mkdir -p letsgo_raw
cd letsgo_raw

start="${year1}-${month1}-01"
end="${year2}-${month2}-01"

while [ "$start" != "$end" ]; do
  curYear=${start:0:4}
  curMonth=${start:5:2}
  wget --continue http://tts.speech.cs.cmu.edu/letsgo/raw/"$curYear"/"$curYear$curMonth".tar.bz2
  start=$(date -I -d "$start + 1 month")
done
wget --continue http://tts.speech.cs.cmu.edu/letsgo/raw/"${year2}"/"$year2$month2".tar.bz2
cd ..
