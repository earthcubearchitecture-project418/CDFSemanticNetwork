# Report to the CDF assembly at ESIP Summer 2019

## About

A brief update on work taking place under Project 418/419 of interest 
to the CDF meeting at the ESIP 2019 Summer meeting.  Further context 
for this document can be found at the Open Knowledge Network for the 
Geoscience Report (https://www.nitrd.gov/nitrdgroups/images/7/7e/OKN-Geoscience.pdf)

## CDF Semantic Network

The CDF Semantic Network (CDFSN) is the output of Gleaner processing of the
authoring and publishing work of the data providers.  For this output, these
providers are those connected to via the Council of Data Facilities (CDF)  

This CDFSN is used to drive the web service calls and interface demos for
EarthCube.  

In the same manner that work is taking place to make Gleaner easy to deploy and
run by others, we are working to make the resulting semantic network from those
runs on CDF members easy to access by a broad community as well.

The basic initial goal of publishing the CDF Semantic Network repository is to
help improve the communication between the data providers and their publishing
efforts and the consumption and use of that data by Gleaner and others.   In
doing this we hope to more quickly evolve the publishing process (to help
increase the volume of providers) and also the quality of the structured data by
more quickly assembling and assessing the network.  For now the "others" is
mostly the Google Data Set Search Tool which is Google's large scale effort in
this space.  In that context, Gleaner and the CDF Semantic Network are useful
tools to enable providers a way to quickly asses publishing workflows.  

In many ways, the goal is to realize something akin to the DevOps process for
data publishing and use.   There does already exist in the concept of "DataOps",
however like most terms we must be cautious in applying it in places and ways it
was not meant to be used.   Still, the overall goals of improved communication
along workflows is basic and valuable.

By formally making the results of Gleaner runs on the CDF members into an open,
accessible and evolving product we work toward many goals.

* Facilities and providers are better able to see a product of their work
and compare it to the products of other peers.
* Errors in both the publishing and harvesting elements are easier and
quicker to identify and resolve.  Additionally, various runs are stored
and organized to help evolve the publishing and harvesting process.
* The semantic network is available to the large community of
potential users and value adding groups.  The scope and type of
structured data being made available is easier for potentially
consumers to review and asses.  
* The organization of the CDF can help identify and manage
priorities for the authoring, harvesting and use of the semantic
network.  CDF can also help identify needed resources to resolve
issues or extend the capacity of the network.
* The organization aspect of GitHub can be used (such as
issues) to raise questions and propose ideas in an open and
accessible manner.  
* Help identify and employ cases where validation
(perhaps via SHACL / shape files) is useful.

### Issue Review

Proposing using the repo as a method to CDF members to discuss and raise issues
related to auhtoring and publishing.  

#### Issue 1

Leveraging robots.txt to aid publishing process

https://github.com/earthcubearchitecture-project418/CDFSemanticNetwork/issues/1

#### Issue 2

Approaches to incremental updates

https://github.com/earthcubearchitecture-project418/CDFSemanticNetwork/issues/2

### Gleaner Update

Several updates to Gleaner have taken place or are in active development.  These
support the goals of making Gleaner easier to use on premesis and in an
automated manner.  

* Validates JSON-LD form
* Now validates the triples structure (Gleaner is now a basic RDF validation service)  Need to contrast to Google Structured Data Testing tool and JSON-LD playground.
* Error logs generated on triple issues (ref: CDF SemNet link)
* Scaling to > 1m to support physical samples
* Releases (thanks to Steve and Dave with the Resource Registry work for bravely alpha testing that)  (and also to Austalian Research Data Commons it turn out)

> Note:  The current release 2.0.4 has NONE of these updates.  A few more updates need to be
> tested to make sure there are no regressions before making a new release.  You can attempt 
> to build from source if you wish to try these.  Please get in touch via the issues
> if you are using this software so can better support and improve its usability



### GeoShapes

GeoShapes:  https://github.com/geoschemas-org/geoshapes

To align the implementation approaches leveraging the vocabularies a set of
validation shapes will be developed.  A set of early development shapes
is in place along with tools for testing with these shapes.  

A set of shape graphs is being proposed with interest from IGSN and DataONE 
This work can take place within ESIP in a manner similar to the
geoschemas approach.  

### Tangram

The Tangram services is a web services  wrapper around the pySHACL (https://github.com/RDFLib/pySHACL) package.  It allows you to send in JSON-LD data graphs to test against a Turtle (ttl) encoded shape graph.

Invoke the tool with something like:

With httpie client:

```bash
http -f POST https://tangram.geodex.org/uploader  datagraph@./datagraphs/dataset-minimal-BAD.json-ld  shapegraph@./shapegraphs/googleRecommended.ttl
```

Or with good old curl:

```bash
curl -F  'datagraph=@./datagraphs/dataset-minimal-BAD.json-ld'  -F  'shapegraph=@./shapegraphs/googleRecommended.ttl'   https://tangram.geodex.org/uploader
```

Fence (very alpha) is a web component based page that can take a JSON-LD data graph and present various views of that graph. 
 (http://alpha.geodex.org/fence?url=http://opencoredata.org/doc/dataset/b8d7bd1b-ef3b-4b08-a327-e28e1420adf0)

### Architecture deployment update

The current P419 work related to architecture is evolving.  The current system runs on a simple docker swarm style deployment on XSEDE.  Basic K8s helm deployment files have also been develiped too.   The above Tangram instance is running using Google Cloud Run which is a scale to 0 K8s as a service (knative).

The Gleaner system is focused completely on Docker Engine as this time due to the simple deployment scheme for workstation style deployments that is the target of that tool.   Some initial work on Gleaner releases (https://github.com/earthcubearchitecture-project418/gleaner/releases) is also being evolved.


Simple (VERY simple) UI at GCP, data at XSEDE pattern: http://alpha.geodex.org/fence?url=http://opencoredata.org/doc/dataset/b8d7bd1b-ef3b-4b08-a327-e28e1420adf0 


### Vocabulary progress

The CDF Semantic Network also defines a base set of recommended vocabularies
that the participants use as primary sources.  This is does not limit the
participants to these vocabularies but rather provides a solid base of default
types and properties for those types.     The principle work on these
vocabularies can be found at the ESIP Science-on-Schema github repository.  

* https://github.com/earthcubearchitecture-project418/p419dcatservices 
* https://github.com/earthcubearchitecture-project418/p419voctemporal 
* https://github.com/ESIPFed/science-on-schema.org 

[ESIP 2019 Sessions](https://drive.google.com/drive/folders/1RaMectpB9Ha-AelqOQ5NsntMuU9oa8vY)

### References

1. CDF Semantic Network:
https://github.com/earthcubearchitecture-project418/CDFSemanticNetwork 
2. Gleaner:
https://github.com/earthcubearchitecture-project418/gleaner 
3. GeoSchemas:
https://github.com/ESIPFed/science-on-schema.org
4. GeoShapes:
https://github.com/geoschemas-org/geoshapes
