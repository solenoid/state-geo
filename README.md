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

attempt2 failed due to missing outer object and just having the array of interesting things which made
later phases after the ndjson not work as needed turning into null if it would have worked this would
have been the commands needed probably. update after attempt4 this is fixed now and works

```
npm run attempt2:shp
npm run attempt2:shpjoin
npm run attempt2:project
npm run attempt2:svg
```

and turned out nantucket wasn't the problem it was provinetown w/o a rest of the cape

put down attempt2 as a fail

moving on to attempt3 and trying out a new dataset

settled on tracts

```
npm run attempt3:shp
npm run attempt3:project
npm run attempt3:svg
```

the look back at https://github.com/veltman/d3-stateplane#nad83--massachusetts-mainland-epsg26986
was worth it the projection looks like it's a bit better

moving onto attemp4 with same better projection as attempt3 as a reference

The census definitions are over in https://api.census.gov/data/2019/acs/acs5/variables.json

probably gonna get this first like the article https://api.census.gov/data/2019/acs/acs5?get=B01003_001E&for=tract:*&in=state:25

woah d3 being esm only in v7 threw a wrench in things so held it back to v6 which still supports require
long related thread on the mess that is esm in node and how d3 just broke it in v7 is here
https://github.com/d3/d3/issues/3469

here's the command after they all got working and this is now through part 2 of the article

```
npm run attempt4:shp
npm run attempt4:project
npm run attempt4:nd-split
npm run attempt4:nd-id
npm run attempt4:nd-population
npm run attempt4:join-population
npm run attempt4:map-population
npm run attempt4:map-population-color
# npm run attempt4:population-debug
npm run attempt4:svg
```
