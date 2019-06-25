# Error Report

## Open Topography

There is only 1 triple from the entire graph that is in error.  It is a 
object IRI that has an extra space in it.   However, looking at
https://schema.org/url we see we really to get this as a type URL and 
properly reference it. 


## Linked Earth

All the errors here are of the same type and are really not an issue with 
the graph.  For https://schema.org/contentUrl we are expecting a text string.
This is in fact what is provided but the JSON-LD library things we can be an IRI 
and defaults to that.  We can override this library behavior if we type this 
as an object literal type xsd string.  An issue for this has been opened (ref needed)

## Neotomoa

These errors are due to the https://schema.org/contentUrl being assigned to a string 
like in the case with Linked Earth.   However, here the string is also in error as it 
is a comma separated set of URL that should be expressed as a proper JSON-LD collection. 

## IEDA

Like with Neotoma of of these error are due to issues with the contentUrl being assigned to 
a comma separated string that should be an JSON-LD collection.

A second error jump out that is the incorrect subject IRI like 
```
<Crossref Funder ID:http://dx.doi.org/10.13039/100000001> 
```
That can be seen in many of the incorrect triples.  Here everything left of the http URL should
be removed.  


