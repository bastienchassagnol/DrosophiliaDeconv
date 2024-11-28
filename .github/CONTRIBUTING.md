# Contributing to DrosophiliaDeconv

This outlines how to propose a change to DrosophiliaDeconv.
For a detailed discussion on contributing to this and other tidyverse packages, please see the [development contributing guide](https://rstd.io/tidy-contrib) and our [code review principles](https://code-review.tidyverse.org/).

## Fixing typos

You can fix typos, spelling mistakes, or grammatical errors in the documentation directly using the GitHub web interface, as long as the changes are made in the _source_ file. 
This generally means you'll need to edit [roxygen2 comments](https://roxygen2.r-lib.org/articles/roxygen2.html) in an `.R`, not a `.Rd` file. 
You can find the `.R` file that generates the `.Rd` by reading the comment in the first line.

## Bigger changes

If you want to make a bigger change, it's a good idea to first file an issue and make sure someone from the team agrees that it’s needed. 
If you’ve found a bug, please file an issue that illustrates the bug with a minimal 
[reprex](https://www.tidyverse.org/help/#reprex) (this will also help you write a unit test, if needed).
See our guide on [how to create a great issue](https://code-review.tidyverse.org/issues/) for more advice.

## Pull request process

### Reporting Issues
If you encounter a bug, have a question, or want to request a new feature:
- Search the [issues](https://github.com/bastienchassagnol/DrosophiliaDeconv/issues) to see if it has already been reported or discussed.
- If not, create a [new issue](https://github.com/bastienchassagnol/DrosophiliaDeconv/issues/new). Please include:
  - A clear and descriptive title.
  - A detailed description of the issue or request.
  - Steps to reproduce the bug (if applicable).
  - Screenshots or logs (if available).

*   Fork the package and clone onto your computer. If you haven't done this before, we recommend using `usethis::create_from_github("bastienchassagnol/DrosophiliaDeconv", fork = TRUE)`.

*   Install all development dependencies with `devtools::install_dev_deps()`, and then make sure the package passes R CMD check by running `devtools::check()`. 
    If R CMD check doesn't pass cleanly, it's a good idea to ask for help before continuing. 
*   Create a Git branch for your pull request (PR). We recommend using `usethis::pr_init("brief-description-of-change")`.

*   Make your changes, commit to git, and then create a PR by running `usethis::pr_push()`, and following the prompts in your browser.
    The title of your PR should briefly describe the change.
    The body of your PR should contain `Fixes #issue-number`.


### Code style

*   New code should follow the tidyverse [style guide](https://style.tidyverse.org). 
    You can use the [styler](https://CRAN.R-project.org/package=styler) package to apply these styles, but please don't restyle code that has nothing to do with your PR.  

*  We use [roxygen2](https://cran.r-project.org/package=roxygen2), with [Markdown syntax](https://cran.r-project.org/web/packages/roxygen2/vignettes/rd-formatting.html), for documentation.  

*  We use [testthat](https://cran.r-project.org/package=testthat) for unit tests. 
   Contributions with test cases included are easier to accept.  
   
### Publication to Bioinformatics advances

1. Read first [General instructions for authors](https://academic.oup.com/pages/authoring/journals/preparing_your_manuscript), 
followed by [Instructions to Authors](https://academic.oup.com/bioinformaticsadvances/pages/instructions-to-authors).
2. [Submission form](https://mc.manuscriptcentral.com/bioadv)
3. [General template is stored in article folder](./article)


