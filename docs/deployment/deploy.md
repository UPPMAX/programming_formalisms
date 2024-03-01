# Deploy and document for usage

```{Objectives}
   - We will prepare for use of your code
   - Update the README
   - Update a Doc Index
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

## In-code documentation

- Comments, function docstrings, ...
- Advantages
  - Good for programmers
  - Version controlled alongside code
  - Can be used to auto-generate documentation for functions/classes
- Disadvantage
  - Probably not enough for users
   
````{discussion} In BO:s?
**Comments examples**

Let's take a look at two example comments (comments in python start with `#`):

**Comment A**
```python
# Now we check if temperature is larger then -50:
if temperature > -50:
    print('do something')
```

**Comment B**
```python
# We regard temperatures below -50 degrees as measurement errors
if temperature > -50:
    print('do something')
```
Which of these comments is best? Can you explain why?
````
```{solution} Solution
- Comment A describes **what** happens in this piece of code, whereas comment B describes **why** this piece of code is there, i.e. its **purpose**.
- Comments in the form of B are much more useful, comments of form A are redundant and we should avoid them.
```

**Why and not how**


### Function docstrings
A docstring is a structured comment associated to a segment of code (i.e. function or class)

Good docstrings describe:
   - What the function does
   - What goes in (including the type of the input variables)
   - What goes out (including the return type)
   - Python example: help(<function name>)
  
**Example**
  
```python
def mean_temperature(data):
    """
    Get the mean temperature

    Args:
        data (pandas.DataFrame): A pandas dataframe with air temperature measurements.

    Returns:
        The mean air temperature (float)
    """
    temperatures = data['Air temperature (degC)']
    return float(sum(temperatures)/len(temperatures))  
  
```
  
``````{challenge} (Optional) Docstrings
- Try to make docstrings for the main program and some of the functions
- Test from a python console (after importing) with ``help(eccentricity)`` or similar

``````  

## Documentation for tutorials
```{note} Documentation comes in different forms - what *is* documentation?
  - **Tutorials**: learning-oriented, allows the newcomer to get started
  - **How-to guides**: goal-oriented, shows how to solve a specific problem
  - **Explanation**: understanding-oriented, explains a concept
  - **Reference**: information-oriented, describes the machinery
  **Not to forget**
  - Project documentation:
    - requirements: what is the goal of the software, risks, platforms
    the analysis: pseudocode and UML
    - risk analysis
```

### HTML static site generators

   There are many tools that can turn RST or Markdown into beautiful HTML pages:

- [Sphinx](http://sphinx-doc.org) **← we will exercise this, this is how this lesson material is built**
  - Generate HTML/PDF/LaTeX from RST and Markdown.
  - Basically all Python projects use Sphinx but **Sphinx is not limited to Python**
  - [Read the docs](http://readthedocs.org)
    hosts public Sphinx documentation for free!
  - Also hostable anywhere else, like GitHub pages. **← this is what we use for this lesson 
  - API documentation possible
- [Jekyll](https://jekyllrb.com)
  - Generates HTML from Markdown.
  - GitHub supports this without adding extra build steps.
- [MkDocs](https://www.mkdocs.org/)
  - Example: [Bianca course](https://uppmax.github.io/bianca_workshop/)

There are many more ...

### Deployment on servers
                                        
GitHub, GitLab, and Bitbucket make it possible to serve HTML pages:
- [GitHub Pages](https://pages.github.com) (GH-pages) ← this is what we and CR use for some course material

- [Bitbucket Pages](https://www.w3schools.com/git/git_remote_pages.asp?remote=bitbucket)
- [GitLab Pages](https://pages.gitlab.io)
- [Read the docs](http://readthedocs.org) ← this is what NBIS uses for some course material
  - Example: [NBIS Introduction to Git](https://nbis-reproducible-research.readthedocs.io/en/course_1803/git/)

#### GitHub pages
- Easiest. Everything is local to GitHub
- This lesson material

#### Read the Docs
- Somewhat more possibilities, like having several versions of documentation to switch between.
                                      
### Wiki:s
- Popular solutions (but many others exist):
  - [MediaWiki](https://www.mediawiki.org)
  - [Dokuwiki](https://www.dokuwiki.org)
  - Also on GitHub!
  - Typically needs to be hosted and maintained

- Example with [WRF weather model](https://github.com/wrf-model/WRF/wiki)
 
````{seealso} 
   [Documentaion by CodeRefinery](https://coderefinery.github.io/documentation/)
````

## (Optional) Last hands on your documentation
- Some inspiration [Beagle](https://github.com/yampelo/beagle)

```{admonition} A little more about licensing

Copyleft is the legal technique of granting certain freedoms over copies of copyrighted works with the requirement that the same rights be preserved in derivative works.

1. Custom/closed/proprietary
  - Derivative work typically not possible
  - Unusual in academics 
2. Permissive (**MIT**, BSD, Apache)
  - Derivative work does not have to be shared    
3. Weak copyleft share-alike (**LGPL**, MPL)
  - Derivative work is free software but is limited to the component
4. Strong copyleft share-alike (**GPL**, AGPL)
  - Derivative work is free software and derivative work extends to the combined project    

```

```{admonition} Citation bullets    
   - Creator
   - Title
   - Publication venue
   - Date
   - Version
   - Type
```

```{admonition} Git/GitHub Repo 
    README.md
         - with citation info
    License
    Figures
        figure outputs
    Src 
        License (here or in the 1st level)
        Requirements.txt
        python files
    Doc
        index
        planning documents
        
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

``````{challenge} (Optional) Update your documentation
- You can now work in GitHub directly
- Do ``git push`` first from local command-line!
- Revisit your README and update it with info after all our commits
  - About
  - Installation
    - Users should be able to install the required python packages with:
      ``pip install -r requirements.txt`` (depending on system ``--user`` may be added)
  - Citing
- License
- Lastly, you may, if tme allows, update the doc/index.md file that should describe the content
- Do a ``git pull`` to have the same version of your project repo locally!
``````



