#!/bin/bash
#
# Adds a citation.cff file to each folder that has an R package
#
# Usage:
#
#  ./add_citation_cff.sh
#
Rscript -e "remotes::install_github(\"ropensci/cffr\")"

for folder in $(ls -d */)
do
  cd ${folder}
  Rscript -e 'cffr::cff_write()'
  cd -
done


