#!/bin/bash
#
# Move all PDFs one folder up
#
# Usage:
#
# ./scripts/move_pdfs_one_folder_up.sh
#

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "./scripts/move_pdfs_one_folder_up.sh"
    exit 42
fi

#if [[ -z "$CI" ]]; then
#    echo "FATAL ERROR."
#    echo "This script must be run on GitHub Actions."
#    exit 43
#fi

for filename in $(find . | grep "pdf$"); do
  if [[ "${filename}" =~ development_design ]]; then
    echo "Skipping 'development_design' filename: ${filename}"
    continue
  fi
  if [[ "${filename}" =~ retrospectives ]]; then
    echo "Skipping 'retrospectives' filename: ${filename}"
    continue
  fi
  if [[ "${filename}" =~ common_practices ]]; then
    echo "Skipping 'common_practices' filename: ${filename}"
    continue
  fi
  echo "filename: ${filename}"
  from="${filename}"
  echo "from: ${from}"
  folder=$(dirname "${from}")
  to=$(dirname "${from}")
  echo "to: ${to}"

  mv ${from} ${to}
done
