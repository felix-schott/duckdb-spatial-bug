INSTALL spatial;
LOAD spatial;

CREATE TABLE london AS SELECT * FROM ST_Read('./london.json');

COPY london TO 'output.shp'
WITH (FORMAT GDAL, DRIVER 'ESRI Shapefile');