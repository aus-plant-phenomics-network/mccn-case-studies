# Case Study 5 - Produce farm zone map
## Description 
Analyse yield maps and farm data to zone a farm based on site variability. This is a specific case of a general 
requirement to analyse suites of spatial variables to classify areas by similarity. Comparable cases include:

- Combine a suite of environmental variables, including weather (temperature, rainfall, humidity - all xyt), lunar phase (t) and greenness (xyt - see https://portal.tern.org.au/metadata/TERN/8542d90e-6e20-4ad8-b30d-0a171b61d3f5) and soils (pH, N, K, structure) for N (e.g. 50) candidate sites and then select derive a classification for each subunit based on a clustering algorithm.

## Data Sources
Use Llara-Campey data including yield values and soil maps to develop classification of farm area into contiguous zones of relatively self-similar productivity. Variables should include the minimum zone area and the maximum number of zone classes to return.

This notebook can be delivered as a tool into which the user can load their own data in the form of spreadsheets containing points and associated values for the variables to take into account in the analysis. The requirement is either for comprehensive (raster) coverage for the area or of a set of point-based measurements for each variable (in which case a simple kriging or mesh interpolation will be applied).

## Dependencies
- This notebook requires Python 3.10 or higher
- Install relevant Python libraries with: **pip install mccn-engine rocrate pykrige scikit-learn**
- Installing mccn-engine will install other dependencies