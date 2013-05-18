#!/bin/sh
# http://wiki.apache.org/solr/CoreAdmin#UNLOAD

curl 'http://localhost:8983/solr/admin/cores?action=STATUS&wt=json' | python -mjson.tool