# Case Study 3 - Select optimal survey locality
## Description 
Based on a mix of environmental parameters and a set of existing sample sites, select the site that adds the greatest environmental variation to those already sampled. This case study uses a set of environmental parameters for New South Wales and an inital set of ten random locations within the state and then selects an 11th to maximise environmental variability.

## Data Sources
The primary goal for this case study is to demonstrate being able to import a set of environmental values for different sites and then use these to identify a subset that maximises spread across the various environmental dimensions.

This is a simple implementation that uses four environmental attributes imported for all Australia (or a subset like NSW) at a moderate grid scale:

1. Soil water pH (0-5cm) - see https://esoil.io/TERNLandscapes/Public/Pages/SLGA/ProductDetails-SoilAttributes.html
2. Soil organic carbon (0-5cm) - see https://esoil.io/TERNLandscapes/Public/Pages/SLGA/ProductDetails-SoilAttributes.html
3. Annual mean rainfall
4. Annual mean temperature

Notes:
- The first two can be imported directly as layers from SLGA. The others are probably available online in suitable forms at a slightly better grid resolution and can also be imported directly.
- An enhancement to this case study would be to start by importing annual layers (say for the last 5 or 10 years) for each of the weather variables and then generating the mean, maximum and minimum respectively for each pixel across the selected years. These computed results would then be the inputs to the main datacube.
- Latitude and longitude could also be incorporated for use directly as additional variables.

## Dependencies
- This notebook requires Python 3.10 or higher
- Install relevant Python libraries with: **pip install mccn-engine rocrate**
- Installing mccn-engine will install other dependencies

## Overview
1. Generate STAC metadata for layers from predefined configuratiion
2. Load data cube and exclude nodata values
3. Scale all variables to a 0.0-1.0 range
4. Select four layers for comparison (soil organic carbon 0-30 cm, soil pH 0-30 cm, mean annual rainfall, mean annual temperature)
5. Select 10 random points within NSW
6. Generate 10 new layers representing standardised environmental distance between one of the selected points and all other points in NSW
7. For every point in NSW, find the lowest environmental distance to any of the selected points
8. Select the point in NSW that has the highest value for the lowest environmental distance to any selected point - this is the most different point
9. Clean up and save results to RO-Crate
