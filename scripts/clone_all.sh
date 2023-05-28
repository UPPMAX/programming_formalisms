#!/bin/bash
#
# Clone all the other repositories used in this course.
# Other repositories will cloned in the same superfolder as
# this repo is in:
#
# Before:
#
# * [superfolder name]
#   * programming_formalisms <--- you are here
#   * [other folders]
#
# After:
#
# * [superfolder name]
#   * programming_formalisms         <--- you are here
#   * programming_formalisms_tdd     <--- new
#   * programming_formalisms_testing <--- new
#   * [etcetera]                     <--- new
#   * [other folders]
#
# Usage:
#
#   ./scripts/clone_all.sh
#
#
if [[ ! "${PWD}" =~ ^.*programming_formalisms$ ]]; then
  echo "Please run this script from the 'programming_formalisms' folder. "
  echo "(that is, for example, not from the 'scripts' folder)."
  echo "Current working directory: ${PWD}"
  exit 42
fi

cd ..
git clone https://github.com/richelbilderbeek/programming_formalisms_tdd
git clone https://github.com/richelbilderbeek/programming_formalisms_testing
git clone https://github.com/richelbilderbeek/programming_formalisms_algorithms
git clone https://github.com/richelbilderbeek/programming_formalisms_data_structures
git clone https://github.com/richelbilderbeek/programming_formalisms_optimisation
