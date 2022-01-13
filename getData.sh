#!/usr/bin/env bash
set -e
# usage: ./getData.sh GENZ2020/shp/cb_2020_25_unsd_500k.zip

# Look for data over in https://www2.census.gov/geo/tiger/ 
# Definitions and naming conventions https://www2.census.gov/geo/tiger/GENZ2020/2020_file_name_def.pdf

DATA_DIR=data/`dirname $1`
ZIP_FILE=`basename $1`
SHAPE_FILE="${DATA_DIR}/${ZIP_FILE/.zip/.shp}"

if [ -f "${SHAPE_FILE}" ]; then
  echo "Shape file ${SHAPE_FILE} already exists, doing nothing."
  exit 1
fi

mkdir -p $DATA_DIR
pushd $DATA_DIR

ZIP_FILE=`basename $1`
curl -O https://www2.census.gov/geo/tiger/$1
unzip $ZIP_FILE
rm $ZIP_FILE

popd
