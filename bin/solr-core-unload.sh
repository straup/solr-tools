#!/bin/sh
# http://wiki.apache.org/solr/CoreAdmin#UNLOAD

CORE=$1

curl -v 'http://localhost:8983/solr/admin/cores?action=UNLOAD&core='${CORE}