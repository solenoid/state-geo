Starting inspiration from https://medium.com/@mbostock/command-line-cartography-part-1-897aa8f8ca2c

But Mass centric as opposed to California. East coast ftw!

## starting hacking

started with curl and then made it a shell script called as an npm run script

```
curl 'http://www2.census.gov/geo/tiger/GENZ2014/shp/cb_2014_06_tract_500k.zip' -o cb_2014_06_tract_500k.zip

curl -O https://www2.census.gov/geo/tiger/GENZ2020/shp/cb_2020_25_unsd_500k.zip
```

after this phase can run the following to get data locally

```
npm run fetch:ma-school-districts
```

now try and show it and started from the article

got to about this trio of commands that you can open up ma1-albers.svg afterwards

```
npm run attempt1:shp
npm run attempt1:project
npm run attempt1:svg
```

thought i needed to "get rid of nantucket" because for some reason it's in boston harbour weird

found https://www.npmjs.com/package/ndjson-cli/v/0.0.3 before i saw it in a later article

TODO look back at https://github.com/veltman/d3-stateplane#nad83--massachusetts-mainland-epsg26986 as opposed to my guess on stuff for parallels

attempt2 failed due to missing outer object and just having the array of interesting things which made
later phases after the ndjson not work as needed turning into null if it would have worked this would
have been the commands needed probably

```
npm run attempt2:shp
npm run attempt2:shpjoin
npm run attempt2:project
npm run attempt2:svg
```

and turned out nantucket wasn't the problem it was provinetown w/o a rest of the cape

put down attempt2 as a fail

moving on to attempt3 and trying out a new dataset
