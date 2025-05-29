# Case Study 6 - Environmental Correlates for Productivity
## Description 
Analyse relationship between different environmental drivers and plant yield. This study demonstrates: 1) Loading heterogeneous data sources into a cube, and 2) Analysis and visualisation of drivers.
This study combines a suite of spatial variables at different scales across multiple sites to analyse the factors correlated with a variable of interest.
A comparable case is the iMapPests data for the same pest across multiple sites and locations to analyse the relationship between population levels and environmental context at the time and over the previous month, including weather (temperature, rainfall, humidity - all xyt), lunar phase (t) and greenness (xyt - see https://portal.tern.org.au/metadata/TERN/8542d90e-6e20-4ad8-b30d-0a171b61d3f5).

## Data Sources
The dataset includes the Gilbert site in Queensland which has multiple standard sized plots for three years. We are using data from 2022.

1. Boundary file - This is a shapefile defining the boundaries of all field plots at the Gilbert site. Each polygon represents a single plot and is associated with a unique Plot ID (e.g., 03_03_1). These plot IDs are essential for joining and aligning data across the orthomosaics and plot-level measurements. 
- https://object-store.rc.nectar.org.au/v1/AUTH_2b454f47f2654ab58698afd4b4d5eba7/mccn-test-data/case-study-5-files/shp.zip.
2. Orthomosaics - The site was imaged by UAV flights multiple times throughout the 2022 growing season, spanning from June to October.
Each flight produced an orthorectified mosaic image using RGB and Multispectral (MS) sensors. 
- https://object-store.rc.nectar.org.au/v1/AUTH_2b454f47f2654ab58698afd4b4d5eba7/mccn-test-data/case-study-5-files/2022-09-18.tif
- https://object-store.rc.nectar.org.au/v1/AUTH_2b454f47f2654ab58698afd4b4d5eba7/mccn-test-data/case-study-5-files/UQ_GilbertN_danNVT_2022-07-28_10-00-00_Altum_bgren_20m_transparent_reflectance_packed.tif
- https://object-store.rc.nectar.org.au/v1/AUTH_2b454f47f2654ab58698afd4b4d5eba7/mccn-test-data/case-study-5-files/UQ_GilbertN_danNVT_2022-08-08_10-00-00_Altum_bgren_20m_transparent_reflectance_packed.tif
3. Plot level measurements - Multispectral Traits: Calculated from MS sensor imagery and include indices NDVI, NDRE, SAVI and Biomass Cuts: Field-measured biomass sampled during different growth stages (used as a proxy for yield). 
- https://object-store.rc.nectar.org.au/v1/AUTH_2b454f47f2654ab58698afd4b4d5eba7/mccn-test-data/case-study-5-files/filtered_biomass_updated.csv
- https://object-store.rc.nectar.org.au/v1/AUTH_2b454f47f2654ab58698afd4b4d5eba7/mccn-test-data/case-study-5-files/filtered_multispec_aggregated.csv

## Dependencies

- This notebook requires Python 3.10 or higher  
- Install relevant Python libraries with: pip install mccn-engine rocrate
- Installing mccn-engine will install other dependencies
