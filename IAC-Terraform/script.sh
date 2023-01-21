#!/bin/sh

dir=$(pwd)

for j in "$@" #function_1_folder, function_2_folder
do
        echo "$dir"
        echo "===============Started============================"
        cd $dir/src/$j && pwd && yarn install
        echo "===============Ended=============================="
        echo "Looping ... for $j"
        ls -la

done