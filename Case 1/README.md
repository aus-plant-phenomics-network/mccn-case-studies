# Case Study 1 - Evaluate impact from environmental events/pressures
## Description 
Aggregate observations of _Caladenia_ orchids in the ACT so I can analyse the relationship between records and the protection status and vegetation cover of the locations of each species.

This is an example of combining suites of spatial variables at different scales across multiple sites to analyse the factors correlated with a variable of interest. Comparable cases could include:
- Aggregate spatial data for frost and other extreme weather events associated with chickpeas and wheat yields to analyse the effects of such events on different varieties at different stages and advise growers on the best choices
- Aggregate pest data for the same pest across multiple sites and locations to analyse the relationship between population levels and environmental context at the time and over the previous month.

## Data sources
- **vegetation_cover_northern.tif** - GA Landsat Vegetation Cover GeoTIFF at 25m2 for the northern two thirds of the ACT and adjacent NSW in 2020: https://explorer.dea.ga.gov.au/products/ga_ls_landcover_class_cyear_2/datasets/67bb9d38-00c7-46ba-a5e9-b892d9f9ad42 (values defined here: https://knowledge.dea.ga.gov.au/data/product/dea-land-cover-landsat/?tab=details)
- **vegetation_cover_southern.tif** - GA Landsat Vegetation Cover GeoTIFF at 25m2 for the southern third of the ACT and adjacent NSW in 2020: https://explorer.dea.ga.gov.au/products/ga_ls_landcover_class_cyear_2/datasets/464fd7e2-0554-4095-80e1-42e00f087831
- **boundary_act.geojson** - 2023 boundary for the Australian Capital Territory from the ACT Government in GeoJSON format: https://actmapi-actgov.opendata.arcgis.com/datasets/ACTGOV::actgov-border/explore
- **capad_act.geojson** - Protected Area data for the Australian Capital Territory in 2022 from the CAPAD dataset in GeoJSON format: https://fed.dcceew.gov.au/datasets/ec356a872d8048459fe78fc80213dc70_0/explore?filters=eyJTVEFURSI6WyJBQ1QiXX0%3D&location=-35.437128%2C149.203518%2C11.00
- **caladenia_act.csv** - Distribution records for orchids in the genus _Caladenia_ between 1990 and present from the ALA in CSV format: https://doi.org/10.26197/ala.1e501311-7077-403b-a743-59e096068fa0

## Dependencies
- This notebook requires Python 3.10 or higher
- Install relevant Python libraries with: **pip install mccn-engine rocrate**
- Installing mccn-engine will install other dependencies

## Overview
1. Group orchid species records by species
2. Prepare STAC metadata records for each data source (separate records for the distribution data for each orchid species)
3. Load data cube
4. Mask orchid distribution records to boundaries of ACT
5. Calculate the proportion of distribution records for each species occurring inside and outside protected areas
6. Calculate the proportion of distribution records for each species occurring in areas with each class of vegetation cover
7. Report the apparent affinity between each species and protected areas and between each species and different classes of vegetation cover

## Notes
- No attempt is made here to compensate for underlying bias in the areas where observers have spent time recording orchids. The analysis should only be considered indicative of relative tendencies.