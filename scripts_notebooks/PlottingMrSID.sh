#!/bin/sh
#
# Name:
#
# Purpose:
#
# Date:
# Author:
#
# GDAL conversion of file from MrSID to NetCDF...
# gdal_translate -of netcdf  OC6i0_37_000_30070601_20100411R0.sid testcdf.nc
#
# gdal_translate -of GTiff  OC6i0_37_000_30070601_20100411R0.sid test.tiff

# Corner Coordinates:
# Upper Left  ( 3000000.000,  770000.000) ( 75d37'34.51"W, 35d49' 8.33"N)
# Lower Left  ( 3000000.000,  765000.000) ( 75d37'36.57"W, 35d48'18.91"N)
# Upper Right ( 3005000.000,  770000.000) ( 75d36'33.83"W, 35d49' 6.65"N)
# Lower Right ( 3005000.000,  765000.000) ( 75d36'35.90"W, 35d48'17.23"N)
# Center      ( 3002500.000,  767500.000) ( 75d37' 5.20"W, 35d48'42.78"N)
#
# State Plane Coordinate System 1983; North American 1983(NSRS2007); GRS80
#
# Linear_Foot_US_Survey
# PROJCS["NAD83(NSRS2007) / North Carolina (ftUS)",
#    GEOGCS["NAD83(NSRS2007)",
#        DATUM["NAD83_National_Spatial_Reference_System_2007",
#            SPHEROID["GRS 1980",6378137,298.2572221010002,
#                AUTHORITY["EPSG","7019"]],
#            AUTHORITY["EPSG","6759"]],
#        PRIMEM["Greenwich",0],
#        UNIT["degree",0.0174532925199433],
#        AUTHORITY["EPSG","4759"]],
#    PROJECTION["Lambert_Conformal_Conic_2SP"],
#    PARAMETER["standard_parallel_1",36.16666666666666],
#    PARAMETER["standard_parallel_2",34.33333333333334],
#    PARAMETER["latitude_of_origin",33.75],
#    PARAMETER["central_meridian",-79],
#    PARAMETER["false_easting",2000000],
#    PARAMETER["false_northing",0],
#    UNIT["US survey foot",0.3048006096012192,
#        AUTHORITY["EPSG","9003"]],
#    AUTHORITY["EPSG","3632"]]

#-R-75.63/-75.61/35.81/35.82     -Jl-79.0/33.75/34.3333333/36.1666667/1.5c    -Ru3000000.000/3005000.000/765000.000/770000.000
gmt makecpt -Cgrey -T0/255/1 -V > /Volumes/Beaker/projects/nc_coastal_erosion/data/photography/NH_prototype/gray.ct
#grdimage nagshead.grd -Rnagshead.grd -Cgray.cpt -Bxaf+l"Easting (ft)" -Byaf+l"Northing (ft)" -BnSeW+t"Test Area near Nags Head, NC"    > test.ps
