# Case Study 2 - Spatial projection via modelled data
## Description 
Estimate soil pH and electrical conductivity at 45 cm depth across the Llara-Campey farm sites based on values collected from soil samples across the farm. 

This is an example of predicting a spatial variable across a region based on a calculation dependent on data for multiple other spatial variables. Comparable cases could include:
- Analyse expected yield for different chickpea and wheat varieties if these were grown across Western Australia under actual seasonal weather conditions, so I can estimate the benefit associated with optimised varietal selection. 
- Predict population levels for a pest species across a region based on a function derived from Case Study 1 and environmental context for the region at the time and over the previous month, including weather (temperature, rainfall, humidity - all xyt), lunar phase (t) and greenness (xyt - see https://portal.tern.org.au/metadata/TERN/8542d90e-6e20-4ad8-b30d-0a171b61d3f5).

## Data sources
- **BradGinns_SOIL2004_SoilData.csv** - Soil measurements from the University of Sydney Llara Campey farm site from 2004, corresponding to sites L1, L3 and L4 describing mid-depth, soil apparent electrical conductivity (ECa), GammaK, Clay, Silt, Sand, pH and soil electrical conductivity (EC)
- **Llara_Campey_field_boundaries_poly.shp** - Field boundary shapes for the University of Sydney Llara Campey farm site

## Dependencies
- This notebook requires Python 3.10 or higher
- Install relevant Python libraries with: **pip install mccn-engine rocrate rioxarray pykrige**
- Installing mccn-engine will install other dependencies

## Overview
1. Select soil sample measurements for pH or EC at 45cm depth
2. Split sample measurements into 80% subset to model interpolated layers and 20% to test interpolated layers
3. Generate STAC metadata for layers
4. Load data cube
5. Interpolate pH and EC across site using the 80% subset and three different 2D interpolation methods from rioxarray (nearest, linear and cubic) and one from pykrige (linear)
6. Calculate the error between each layer of interpolated values and measured values for the 20% setaside for testing
7. Compare the mean and standard deviation of the errors for each interpolation method
8. Clean up and package resuls as RO-Crate

## Notes
- The granularity of variability in soil data significantly compromises all methods
- Depending on the 80/20 split, different methods may appear more reliable, but the pykrige linear method is most often best