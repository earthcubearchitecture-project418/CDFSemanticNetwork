# EarthCube CDF Semantic Network

## Run Index

Quick link to the [index of runs](./DATA.md) with links to further details.  

## About 

This repository is an experiment.   It holds the output of [GeoCODES](https://www.earthcube.org/geocodes) Gleaner runs done on the various repositories that make up the [EarthCube Council of Data Facilities](https://www.earthcube.org/group/council-data-facilities) (CDF).

Here we will describe the runs being conducted with Gleaner and the output and errors from those runs.   The results of these runs generates a  data graph or semantic network of resources exposed by CDF members.   This network is what feeds the APIs and interfaces being developed as part of EarthCube.   

Initially this graph focus on type data resources.  However, Gleaner can index others types such as Organization and work is underway to address physical samples.  Also, the work of the [EarthCube Resource Registry](https://www.earthcube.org/resource_registry) will bring in other resource types to populate this semantic network as well.  

Note, it is NOT intended that this be the place people go to get the "CDF Semantic Network" output.  Though that is basically the case now, the assumption is that providers will geneate and host their own part of the network.  Some may opt to have this done for them as a service through EarthCube and in that case this may be the location for distribution or another pattern may evelove.   How all this is done will evolve. 

There are several goals for this repo;

* Help facilities both declare their offerings and also help them assess their publishing patterns and inspect the patterns of others. 
* Provide a means to more routinely perform these indexes, address incremental updates and also help describe and address errors in the publishing process and harvesting code and work flow.  
* The output files here will hopefully provide feedback on how facilities interact and contribute to the vocabulary work in https://github.com/ESIPFed/science-on-schema.org  (as well as SWEET, DCAT, etc).  This also includes dev work on;
  * Data service descriptions: https://github.com/earthcubearchitecture-project418/p419dcatservices
  * Temporal descriptions:  https://github.com/earthcubearchitecture-project418/p419voctemporal
* Provide a start for addressing the use of shape files to address validation and shared publishing patterns.    This work will take place in https://github.com/geoschemas-org/geoshapes 

