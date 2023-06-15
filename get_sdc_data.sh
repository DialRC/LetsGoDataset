#!/bin/bash

wget --continue --recursive --no-parent --reject "index.html*" http://data.ds.uni-bamberg.de/lets-go-dataset/sdc2010/
mkdir -p letsgo_sdc
mv ./data.ds.uni-bamberg.de/lets-go-dataset/sdc2010 ./letsgo_sdc/sdc2010
rm -rf data.ds.uni-bamberg.de
