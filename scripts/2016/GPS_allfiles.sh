#!/bin/bash

# Purpose:
#       Script to run ACROBAT_gps_read.py

data_dir="/Users/bell/ecoraid/2016/AlongTrack/AQ1601/ACROBAT/RAW/GPS/*.dat"
prog_dir="/Users/bell/Programs/Python/EcoFOCI_AcrobatProcessing/"


for files in $data_dir
do
    names=(${files//\// })
    outfile=${names[${#names[@]} - 1]}
    #echo "processing file: $files"
    python ${prog_dir}ACROBAT_data_read.py ${files} GPS
done
