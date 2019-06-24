# CDF Semantic Network Dev Run 1  (CDFSemNetD1)

## About

Though not the first run of this type by far this is the first we are using to test the output repository approach.

Suggestions on how to make this better for the providers is welcome.  This includes things like directory structure and more.   

The plan is to inlcude the config file and discussion the reasons and goals of the run.   

## Output

The results can be seen in [./runs/CDFSemNetD1](./runs/CDFSemNetD1) .   The file patterns are:

| Type           | Pattern         | Notes                                                        |
| -------------- | --------------- | ------------------------------------------------------------ |
| RDF data graph | *.n3            | should use .nt                                               |
| Prov graph     | *_prov.n3       | This is early prov throughts..  output likely not very good. |
| SHACL report   | *_shacl.nt      | Like prov this is early work.  Some care needs to be made to make this useful (and align wwith the error files.) |
| Error report   | *_rdfErrors.txt | Output from gleaner giving a resources set (a triple) and the reason it was excluded from the "good" graph. |

## Run Description

This run is being done for the following reasons.

1. Test the new validating graph code in Gleaner.  This code not 
   only converts the JSON-LD to triples but validates those triples.  Note, 
   just because a triple is valid, doesn't mean its well formed.  That 
   is more a task of the shapes that are discussed else where.
2. Test the "erro" output.  Statement that are bad are recorded in an
   error file.  This way they can be addressed by a facility or in code if it's
   a code issue.   Note, the same error across 20K resources results in 20K entries in the error file.  So finding ways to make this more useful is work to be done.
3. Test routing the good statemens (as quads) into a workflow to update 
   the triple store.   This workflow needs to address the issues seen in CRUD style approaches too.   Where new resources are created and old resources may be deleted or updated.  We need to address this in the context of RDF work flows like SPARQL update.
4. This run is not milling (though I have summoned) larger groups like Data Discovery Studio or IED.  This is mostly due to their size and the desire to test with a  relatively smaller set of resources first.  Once I have this working we will do another run to build a larger more complete graph.  
5. The SHACL files are all 0 due to a configuration issue..   this will be resolved but is no real loss since we didn't plan anything for this output at this time.  

### Configuration file


```yaml
---
gleaner:
  summon: false
  mill: true
  runid: p419run6
summoner:
  mode: diff  # one of diff: look for difference or full: delete old objects and replace
millers:
  mock: false
  graph: true
  spatial: false
  shacl: true
  organic: false
  tika: false
  fdptika: false
  fdptikajena: false
  fdpgraph: false
  prov: true
  ner: false
sources:
- name: baltoopendaporg
  shortname: balto
  logo: http://geodex.org/images/logos/EarthCubeLogo.png
  url: http://balto.opendap.org/opendap/site_map.txt
  headless: false
  sitemapformat: text
  active: true
- name: ssdbiodporg
  shortname: sitesurvey
  logo: https://ssdb.iodp.org/images/head_logo_PRO.gif
  url: https://ssdb.iodp.org/dataset/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: wwwhydroshareorg
  shortname: hydroshare
  logo: http://geodex.org/images/logos/cuahsiHydroshare.png
  url: https://www.hydroshare.org/sitemap-resources.xml
  headless: false
  sitemapformat: xml
  active: true
- name: cdfregistry
  shortname: cdf
  logo: http://geodex.org/images/logos/EarthCubeLogo.png
  url: s3://local/gleaner/cdfsitemap.xml
  headless: false
  sitemapformat: xml
  active: false
- name: dataneotomadborg
  shortname: neotoma
  logo: http://geodex.org/images/logos/neotoma.png
  url: http://data.neotomadb.org/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: earthreforg
  shortname: magic
  logo: http://geodex.org/images/logos/magic.png
  url: https://earthref.org/MagIC/contributions.sitemap.xml
  headless: true
  sitemapformat: xml
  active: false
- name: getiedadataorg
  shortname: ieda
  logo: http://geodex.org/images/logos/ieda_maplogo.png
  url: http://get.iedadata.org/doi/xml-sitemap.php
  headless: false
  sitemapformat: xml
  active: true
- name: opencoredataorg
  shortname: opencore
  logo: http://geodex.org/images/logos/ocd_logo.jpg
  url: http://opencoredata.org/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: opentopographyorg
  shortname: opentopo
  logo: http://geodex.org/images/logos/opentopo.png
  url: http://opentopography.org/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: wikilinkedearth
  shortname: linkedearth
  logo: http://geodex.org/images/logos/linkedEarth.jpeg
  url: http://wiki.linked.earth/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: wwwbco-dmoorg
  shortname: bcodmo
  logo: http://geodex.org/images/logos/bco-dmo-words-BLUE.jpg
  url: https://www.bco-dmo.org/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: wwwunavcoorg
  shortname: unavco
  logo: http://geodex.org/images/logos/uv-logo.png
  url: http://www.unavco.org/data/doi/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: dsirisedu
  shortname: iris
  logo: http://geodex.org/images/logos/iris_color_screen_lrg.png
  url: http://ds.iris.edu/files/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true
- name: portaledirepositoryorg
  shortname: edi
  logo: https://portal.edirepository.org/nis/images/EDI-logo-300DPI_5.png
  url: https://portal.edirepository.org/sitemap_index.xml
  headless: false
  sitemapformat: xml
  active: false
- name: datadiscoverystudioorg
  shortname: studio
  logo: http://geodex.org/images/logos/EarthCubeLogo.png
  url: http://datadiscoverystudio.org/sitemap/CinergiSiteIndex.xml
  headless: false
  sitemapformat: xml
  active: false
- name: dataucaredu
  shortname: dataucar
  logo: http://geodex.org/images/logos/EarthCubeLogo.png
  url:  https://data.ucar.edu/sitemap.xml
  headless: false
  sitemapformat: xml
  active: true



```
