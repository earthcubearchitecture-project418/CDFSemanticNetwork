## Blazegraph deployment commands



docker run -it metaphacts/blazegraph-basic -port 9999:9999
curl -X POST -H 'Content-Type:text/x-nquads' --data-binary '@wwwunavcoorg.nq' http://localhost:8080/blazegraph/namespace/kb/sparql
