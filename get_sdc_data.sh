#!/bin/bash

wget --continue --recursive --no-parent --reject "index.html*" http://tts.speech.cs.cmu.edu/letsgo/sdc2010/
mkdir -p letsgo_sdc
mv ./tts.speech.cs.cmu.edu/letsgo/sdc2010 ./letsgo_sdc/sdc2010
rm -rf tts.speech.cs.cmu.edu