# Case Study 4 - Validating gridded data products
## Description 
Compare Bureau of Meteorology gridded daily maximum and minimum temperature data with data from weather stations across Western Australia.

This is an example of comparing high-quality ground-based data from multiple sites with a data product from satellite imagery or data modelling, so that I can assess its precision and accuracy for estimating the same variables at other sites.

## Data Sources
The case study uses national weather data products from the Bureau of Meteorology for daily mean maximum/minimum temperature, accessible from http://www.bom.gov.au/jsp/awap/temp/index.jsp. Seven daily maximum and minimum temperature grids were downloaded for the dates 7 to 13 April 2025 inclusive. These data can be accessed in the source_data folder in the downloaded ASCII grid format (\*.grid). These data will be loaded into the data cube as WGS84 Geotiff files. To avoid extra dependencies in this notebook, the data have already been converted using QGIS Desktop and are also included in the source_data folder (\*.tiff).

Comparison data for maximum and minimum air temperature were downloaded for all public weather stations in Western Australia from https://weather.agric.wa.gov.au/ for the 10 day period 4 to 13 April 2025. These are included in source_data as CSV files. These downloads do not include the coordinates for the weather stations. These were downloaded via the https://api.agric.wa.gov.au/v2/weather/openapi/#/Stations/getStations API method and are included in source_data as DPIRD_weather_stations.json.

## Dependencies
- This notebook requires Python 3.10 or higher
- Install relevant Python libraries with: **pip install mccn-engine rocrate**
- Installing mccn-engine will install other dependencies

## Overview
1. Convert weather station data to point measurements (longitude, latitude, date, temperature)
2. Prepare STAC metadata records for each data source (separate records for each daily minimum and maximum layer from BOM, one for all weather station minima, and one for all weather station maxima)
3. Load data cube
4. Visualise cube
5. Calculate differences between weather station values and BOM data for each station and date
6. Identify sites with extreme differences (errors) for minimum and maximum temperature
7. Identify sites with low differences for minimum and maximum temperature
8. Cleanup and write results to RO-Crate

## Notes
- Weather stations with high differences/errors are likely to have configuration of positioning issus and should not be treated as reliable.
- Weather stations with low errors are suitable for use in local analysis.
- The generally low difference between the measured values and the BOM products indicates the level of confidence that should be applied to use of these products for analyses where local measurements are not available.
- In reality, at least some of these sites will have contributed to the BOM products, so the comparands are not truly independent.