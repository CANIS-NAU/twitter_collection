#!/bin/bash

data_dir="cd $1"

hour_ago=$(date -d "1 hour ago" '+%Y_%m_%d_%H')
$data_dir && cat $hour_ago*"_stream_"* > $hour_ago"_composite.csv" && rm $(ls $hour_ago*"_stream_"*)
