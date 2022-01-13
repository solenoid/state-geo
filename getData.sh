#!/usr/bin/env bash
set -e
# usage: ./getData.sh GENZ2020/shp/cb_2020_25_unsd_500k.zip

# Look for data over in https://www2.census.gov/geo/tiger/ 

DATA_DIR=data/`dirname $1`

if [ -d "$DATA_DIR" ]; then
  echo "Directory $DATA_DIR already exists, doing nothing."
  exit 1
fi

mkdir -p $DATA_DIR
pushd $DATA_DIR

ZIP_FILE=`basename $1`
curl -O https://www2.census.gov/geo/tiger/$1
unzip $ZIP_FILE
rm $ZIP_FILE

popd
