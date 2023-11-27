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

if [[ ! -z "$CI" ]]; then
    echo "FATAL ERROR."
    echo "This script must be run on GitHub Actions."
    exit 43
fi
for file in find . | grep "pdf$"; do
  mv $file dirname(dirname($file))
done
