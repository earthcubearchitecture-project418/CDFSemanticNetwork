# Data Index

## Index

This is the run index.  It provides a quick bit of info about a run and then points to the more detailed run description. 

1. [CDFSemNetD1](runs/CDFSemNetD1.md)  (Jun 24th, 2019)
   CDF Semantic Network Dev run 1:  This is actually run6 of a set of runs to test some elements of Gleaner such as graph validation.
2. Fuzzy Four   (Jun 23rd, 2019)
   This was a developmental run to test out detecting errors in data graphs.  Some of these "errors"  are due to the code making assumptions in cases of multi-typed resources and others are errors in things like IRI construction or other RDF formating issues.    Fuzzy Four from it simply being a targeted run around 4 providers who had errors being reported in their graph.  Again, some of these errors are due to code or library issues, others are publishing issues.  We are looking to describe and check for some of these issues leveraging shape files.  Issues in the GeoShapes repo have been made to hold information about these already.  See: https://github.com/geoschemas-org/geoshapes/issues
3. UnavHydro   (Jun 19th, 2019)
   This was a basic run to update the UNAVCO and HydroShare graphs.  There is nothing special about this run and it was done with a rather old version of the gleaner code.  
4. OutATime (May 29th, 2019)
   This was the first test of harvesting the temporal description patterns being developed.  It was exposed with the great help of the UCAR UNIDATA group.   It is just a small test graph but helped test out the whole flow.  