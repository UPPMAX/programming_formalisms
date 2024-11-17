# Package

!!!- info "Learning objectives"

    - Understand how to package a Python project
    - Package our Python project locally
    - Run a script with out Python project

## Why?

You want to share or re-use your work
in the regular way.

## Exercises

### Exercise 1: Install and use a Python package

- Scan the 
  ['Python Packaging User Guide' section on 'Packaging Python Projects'](https://packaging.python.org/en/latest/tutorials/packaging-projects/)
  until (and excluding) 'Generating distribution archives'
- Does the learners' project follow all of these guidelines?

???- question "Answer"

    Yes.

    The learners' project already follows all of these guidelines :-)

- Does the learners' project check if our project can be put in a package?

???- question "Answer"

    Yes.

    You can find this in the `.github/workflows/check_package.yaml`
    script

- How does the learners' project put our code into a package?
  You can find it in the CI script.

???- question "Answer"

    The script uses:

    ```bash
    python3 -m pip install .
    ```

- Create a local package from the learners' project's code.
  Use the CI script's code as a hint.

???- question "Answer"

    The script uses:

    ```bash
    python3 -m pip install .
    ```

    However, variations to get this to work on your computer are:

    - use `python` instead of `python3`
    - add `--break-system-packages` at the end, 
      i.e. run `python3 -m pip install . --break-system-packages`

- Scan the file `main.py` in the root folder of the learners' project.
  Confirm that it assumes our Python package to be present.
  What is the name of our Python package?

???- question "Answer"

    The script imports a function from `bacsim`:

    ```python
    from bacsim.experiment import (
        run_experiment,
    )
    ```

    Hence, our package is called `bacsim`.

    Another way to find out, is to read `pyproject.toml`, another
    file in the root folder of our project.
    It reads:

    ```toml
    [project]
    name = "bacsim"
    ```

- Run the script `main.py` to verify our package is installed.
  Have you successfully installed our code as a package?

???- question "Answer"

    If you see this error message, the answer is 'no':  

    ```
    Traceback (most recent call last):
      File "/home/richel/GitHubs/programming_formalisms_project_autumn_2024/main.py", line 10, in <module>
        from bacsimx.experiment import (
    ModuleNotFoundError: No module named 'bacsim'
    ```

    If you get an error such as `Cannot find file 'parameters.csv'`
    it means that our package is installed successfully.
    Sure, it does not do actual work, but it is installed!
