# Multi-scalar Crop Characterisation Network (MCCN) - Case Studies

## Purpose
The MCCN project is to deliver tools tp assist the agricultural sector to understand crop-environment relationships, specifically by facilitating generation of data cubes for spatiotemporal data. This repository contains Jupyter notebooks to demonstrate the functionality of the MCCN data cube components.

## Challenge
Climate change increases the frequency of extreme weather events, affecting the agricultural sector. Farmers face challenges in managing practices and selecting optimal crop breeds. Diverse data sources complicate understanding crop-environment relationships.

## Response
The MCCN project is based on the long-term goals within the MCCN to develop end-to-end pipelines for preparing, publishing, aggregating and analysing plant phenomics data following the FAIR data principles. MCCN has developed two modules to address these needs:
- [**stac-generator**](https://github.com/aus-plant-phenomics-network/stac-generator) - Simplify configuration of STAC metadata describing raster, vector and tabular (point) data assets for import by the MCCN engine.
- [**mccn-engine**](https://github.com/aus-plant-phenomics-network/mccn-engine) - Import assets described with STAC metadata for inclusion in an [xarray](https://docs.xarray.dev/en/stable/index.html) data cube ready for visualisation, analysis and export.

## Who can benefit
- Agricultural industry
- Exporters
- Researchers
- Industry

## Case Studies
This repository contains code and sample data for the following case studies. Note that the analyses here are to demonstrate the software and result should not be considered scientifically or statistically meaningful. No effort has been made to address bias in samples, and sample data may not be available at sufficient density to warrant analysis. All case studies end with generation of an RO-Crate data package including the source data, the notebook and generated outputs, including netcdf exports of the datacubes themselves.

### Case Study 1 - Evaluate impact from environmental events/pressures
Aggregate observations of _Caladenia_ orchids in the ACT to analyse the relationship between records and the protection status and vegetation cover of the locations of each species. This study demonstrates: 1) Description of spatial assets using STAC, 2) Loading heterogeneous data sources into a cube, 3) Masking data and computing simple statistics using xarray.

### Case Study 2 - Spatial projection via modelled data
Estimate soil pH and electrical conductivity at 45 cm depth across a farm based on values collected from soil samples. This study demonstrates: 1) Description of spatial assets using STAC, 2) Loading heterogeneous data sources into a cube, 3) Spatial projection in xarray using different algorithms offered by the [pykrige](https://pypi.org/project/PyKrige/) and [rioxarray](https://pypi.org/project/rioxarray/) packages.

### Case Study 3 - Select optimal survey locality
Given a set of existing survey locations across a variable landscape, determine the optimal site to add to increase the range of surveyed environments. This study demonstrates: 1) Loading heterogeneous data sources into a cube, and 2) Analysis and visualisation using numpy and matplotlib.

### Case Study 4 - Validating gridded data products
Compare Bureau of Meteorology gridded daily maximum and minimum temperature data with data from weather stations across Western Australia. This study demonstrates: 1) description of spatial assets using STAC, 2) Loading heterogeneous data sources into a cube, 3) Computation of data errors inside xarray.

### Case Study 5 - Exploration of environmental drivers of productivity
Analyse relationship between different environmental drivers and plant yield. This study demonstrates: 1) Loading heterogeneous data sources into a cube, and 2) Analysis and visualisation of drivers.

### Case Study 6 - Produce farm zone map
Use soil sample data and crop yield data to develop a zone map for a farm. This study demonstrates: 1) Loading heterogeneous data sources into a cube, and 2) Analysis and visualisation using pykrige and [SpatialCluster](https://pypi.org/project/SpatialCluster/).

## Ownership and History
- **Contact partner:** Donald Hobern ([donald.hobern@adelaide.edu.au](mailto:donald.hobern@adelaide.edu.au))

## MCCN project details
**Project Lead:** Australian Plant Phenomics Network (APPN)

**Beneficiaries:** Agricultural industry, exporters, researchers, industry

**Program:** Food Security Data Challenges

**Time Frame:** 2023 to 2025

**Current Phase:** Completed

**DOI:** [10.47486/DC105](https://ardc.edu.au/project/multi-scalar-crop-characterisation-network-mccn/)

## Key Resources
- [**STAC generator**](https://github.com/aus-plant-phenomics-network/stac-generator)
- [**MCCN Engine**](https://github.com/aus-plant-phenomics-network/mccn-engine)
