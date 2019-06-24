# CDF Semantic Network Dev Run 1  (CDFSemNetD1)

## About

Though not the first run of this type by far this is the first
we are using to test the output repository approach.

Suggestions on how to make this better for the providers is welcome.  
This includes things like directory structure and more.   

The plan is to inlcude the config file and discussion the reasons and 
goals of the run.   

## Run Description

This run is being done for the following reasons.

*1 Test the new validating graph code in Gleaner.  This code not 
only converts the JSON-LD to triples but validates those triples.  Note, 
just because a triple is valid, doesn't mean its well formed.  That 
is more a task of the shapes that are discussed else where.
2 Test the "erro" output.  Statement that are bad are recorded in an
error file.  This way they can be addressed by a facility or in code if it's
a code issue.   Note, the same error across 20K resources results in 20K entries
in the error file.  So finding ways to make this more useful is work to be done.
3 Test routing the good statemens (as quads) into a workflow to update 
the triple store.   This workflow needs to address the issues seen in CRUD 
style approaches too.   Where new resources are created and old resources may be
deleted or updated.  We need to address this in the context of RDF work flows like 
SPARQL update.
4 This run is not milling (though I have summoned) larger groups like Data Discovery
Studio or IED.  This is mostly due to their size and the desire to test with a 
relatively smaller set of resources first.  Once I have this working we will 
do another run to build a larger more complete graph.  


```yaml




```
