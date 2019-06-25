#!/bin/bash
# A wrapper script for loading RDF into Jena 
# usage:  load2jena.sh directory targetDataBase  
# example: ./load2jena.sh ../runs/CDFSemNetD1 p419  
pushd $1

files=$( ls -1  *.nq | grep -v shacl | grep -v prov   )
counter=0
for i in $files ; do
      echo "-------------start-------------"
      echo Next: $i
      # rapper -e -c -i nquads $i 
      # curl -X POST --header "Content-Type:application/n-quads" -d @$i http://localhost:3030/$2/data
      curl -X POST --header "Content-Type:application/n-quads" -d @$i http://localhost:3333/$2/data
      echo "-------------done--------------"
done

popd
