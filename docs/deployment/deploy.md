# Deploy touyr code

    - Installing tools
        - Pypi
        - Conda
        - Make
        - cmake
    - Notebooks
    -	Readmes
    -	Tutorials
    -	Headers in R and python /bin/env
    -	Windows
    -	Mac
    -	linux
    -	Check background
    -	Tabs?



```{Objectives}
   - We will prepare for use of your code
   - Revisit licence
   - But also...
     - some theory of packages
     - some theory of workflows
     - some theory of containers
     - some info about Tutorials/Reference/HowTo guides
```

```{attention}
- Make your program or workflow work for others and yourself in the future.
- Let people understand how to use your program/tool
```

## Recording dependencies
-	**Reproducibility**: We can control our code but how can we control dependencies?
-	**10-year challenge**: Try to build/run your own code that you have created 10 (or less) years ago. Will your code from today work in 5 years if you don’t change it?
-	**Dependency hell**: Different codes on the same environment can have conflicting dependencies.

### Conda, Anaconda, pip, Virtualenv, Pipenv, pyenv, Poetry, requirements.txt …

**These _Python-related_ tools try to solve the following problems:**
-	**Defining a specific set of dependencies**, possibly with well-defined versions
-	**Installing those dependencies** mostly automatically
-	**Recording the versions** for all dependencies
-	**Isolated environments**
   -	On your computer for projects so they can use different software.
   -	Isolate environments on computers with many users (and allow self-installations)
   -	Using **different Python/R versions** per project??
   -    Provide tools and services to **share packages**

[Python packaging](https://aaltoscicomp.github.io/python-for-scicomp/packaging/).
- Make Python packages of your code.
  
- **Possibilities for other languages can be**
  - C/C+
    - CMake
    - Conda
  - Fortran
    - Fortran package manager
  - Julia
    - Pkg.jl
- [More info](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#recording-dependencies)

[The tools](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#the-tools)



**Course advertisement**
[Python for scientific computing](https://aaltoscicomp.github.io/python-for-scicomp/)

### Record our environment for other users

- We can make other users aware of the dependencies for our Python project.
- One can state those specifically as a list in a README
- Or, we can make a ready file (in python) 

``````{type-along} Save your requirements as a file 
- Save your requirements as a file that user can run to get the same dependencies as you

```console
$ pip freeze > requirements.txt
```
- Users can then install the same packages with:

```console
$ pip install -r requirements.txt
```

**TIP** Inform about this in the last exercise (updating the README file)

``````

## Workflows

```{seealso}
**Learn more**
[Workflow management by CodeRefinery](https://coderefinery.github.io/reproducible-research/workflow-management/)
[Snakemake by CodeRefinery](https://nbis-reproducible-research.readthedocs.io/en/course_2104/snakemake/)
```
## Containers

**Popular container implementations:**
- Docker
- Singularity (popular on high-performance computing systems)
- Apptainer (popular on high-performance computing systems, fork of Singularity)
- Docker images can be converted to Singularity/Apptainer images
- Singularity Python can convert Docker files to Singularity definition files

- [Environments by CodeRefinery](https://coderefinery.github.io/reproducible-research/environments)
- [Containers in the extra material](https://uppmax.github.io/programming_formalisms_intro/reproducible_deeper.html#containers)


```{keypoints}
**Make sure it works for other or you in the future!**
  - Preserve the steps for re-generating published results.
  - Hundreds of workflow management tools exist.
  - Snakemake is a comparatively simple and lightweight option to create transferable and scalable data analyses.
  - Sometimes a script is enough.
```


```{admonition} Parts to be covered
- &#9745; Planning
  - Pseudocode
  - Unified Modelling Language
- &#9744; Testing
  - We don't do this today!
- &#9745; Source/version control
  - git history
  - git branches
- &#9744; Collaboration
- &#9745; Sharing
  - &#9745; open science
  - &#9745; citation
  - &#9745; licensing
  - &#9745; reproducible
- &#9745; Documentation
  - docstrings
  - README

```




