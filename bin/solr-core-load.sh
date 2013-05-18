#!/bin/sh
# http://wiki.apache.org/solr/CoreAdmin#UNLOAD

INSTANCEDIR=`python -c 'import os, sys; print os.path.realpath(sys.argv[1])' $1`
CORE=`basename ${INSTANCEDIR}`

CONFIGDIR=${INSTANCEDIR}/conf/solrconfig.xml

curl -v 'http://localhost:8983/solr/admin/cores?action=CREATE&name='${CORE}'&instanceDir='${INSTANCEDIR}'&config='${CONFIGDIR}