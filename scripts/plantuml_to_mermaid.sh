#!/bin/bash
#
# Convert a PlantUML file to a mermaid file
#
# Usage:
#
# ./plantuml_to_mermaid [input_filename] [output_filename]
#
# Example:
#
# ./plantuml_to_mermaid usecase.plantuml usecase.mermaid
#
#

if (( $# != 2 )); then
  echo "Must specify two parameters, got $# parameter(s) instead. "
  echo " "
  echo "Example: "
  echo " "
  echo "  ./plantuml_to_mermaid usecase.plantuml usecase.mermaid"
  exit 42
fi

echo "Input filename: $1"
echo "Output filename: $2"

echo "ERROR: the GitHub repo does not support this"

exit 1234567
if [ ! -d plantuml-to-mermaid ]; then
  git clone https://github.com/kokoichi206/plantuml-to-mermaid.git
fi

bash plantuml-to-mermaid/main.sh $1 -o $2


