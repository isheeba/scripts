#!/bin/bash

## Setup Parent Folder.
dir='/Users/isheeba/Sites/'

## Setup array of site names.
declare -a sites=('wip' 'test')

## Run the loop for update for core, theme and plugin. 
for site in "${sites[@]}";
do
	site=$dir$site
	echo "WP update for :"  $site
	wp --path=$site core update
	wp --path=$site theme update --all
	wp --path=$site plugin update --all
done
