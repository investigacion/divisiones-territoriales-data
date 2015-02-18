# Divisiones territoriales de Costa Rica #

[![Open Data](http://assets.okfn.org/images/ok_buttons/od_80x15_blue.png)](http://opendefinition.org/)

Base de datos de provincias, cantones y distritos de Costa Rica, con los nombres y códigos oficiales.

Mantenido por [Matthew Caruana Galizia](https://twitter.com/mcaruanagalizia).

## JSON ##

Exactamente como el CSV, pero con el código como clave.

## CSV ##

### adm1-provincias.csv ###

Las siete provincias de Costa Rica.

### adm2-cantones.csv ###

Los 81 cantones de Costa Rica. En el campo `Provincia` se encuentra el código para el campo correspondiente en la tabla de provincias.

### adm2-gadm.csv ###

Asignaciones de ID para los shapefiles de nivel `adm2` de [GADM](http://www.gadm.org/).

Por ejemplo, cuando estás usando [topojson](https://github.com/mbostock/topojson) para convertir un archivo de formato [GeoJSON](http://geojson.org/):

```bash
ogr2ogr \
	-f GeoJSON \
	costa-rica-adm2.geojson \
	CRI_adm/CRI_adm2.shp
topojson \
	-e ../divisiones-territoriales-data/data/csv/adm2-gadm.csv \
	--id-property=+ID_2 \
	-p código=+Código \
	-q 1e4 \
	-o costa-rica-adm2.topojson \
	costa-rica-adm2.geojson
```

### adm3-distritos.csv ###

Los 474 distritos de Costa Rica. En el campo `Canton` se encuentra el código para el campo correspondiente en la tabla de cantones.

## Licencia ##

[Open Data Commons Attribution License (ODC-BY)](http://opendatacommons.org/licenses/by/1.0/).
