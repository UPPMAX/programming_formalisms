#!/bin/bash
#
# Add, commit and push all the other repositories used in this course.
#
# * [superfolder name]
#   * programming_formalisms         
#   * programming_formalisms_tdd     
#   * programming_formalisms_testing 
#   * [etcetera]                     
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
cd programming_formalisms_tdd ; git add . ; git commit -m "Update" ; git push ; cd -
cd programming_formalisms_testing ; git add . ; git commit -m "Update" ; git push ; cd -
cd programming_formalisms_algorithms ; git add . ; git commit -m "Update" ; git push ; cd -
cd programming_formalisms_data_structures ; git add . ; git commit -m "Update" ; git push ; cd -
cd programming_formalisms_optimisation ; git add . ; git commit -m "Update" ; git push ; cd -
