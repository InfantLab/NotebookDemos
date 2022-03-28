# A quick Computational Notebook tutorial for social scientists

## Using R-stats in RMarkdown or Jupyter notebook

This repository contains a Jupyter notebook file which walks you through the basics of using notebooks and RStats for reproducible data analysis. It starts with a general guide to the notebook format and how to install the necessary software. Then it goes through an example using R to load data, filter missing values, create graphs and run statistical tests. 

## To run locally

Download this folder of code to your local machine amd then either 
 
 1. **In RStudio** - navigate to the downloaded folder, open `install.R` and run the code to install the necessary packages. Then open `index.Rmd`.
 2. **In Jupyter** - install and launch Jupyter via [Anaconda Navigator](https://www.anaconda.com/products/individual) or similar. Then, in Jupyter, navigate to the downloaded folder and open `index.ipynb`.



## To run remotely using Binder
[MyBinder.org](http://mybinder.org) provides a way of sharing fully functionally interactive notebooks over the internet. It works by compiling and hosting a Docker instance with a fixed set of all the necessary software to run the notebook.

This example can to launched and run from Binder. Click one of these black and red buttons. Both [RStudio](https://www.rstudio.com/) and [IRKernel](https://irkernel.github.io/) are installed by default, so you can use either the Jupyter notebook interface or
the RStudio interface for R projects. 

This tutorial is about Jupyter in combination with R. To launch it press this button >>  [![Binder](http://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/InfantLab/NotebookDemos/HEAD?labpath=.%2Findex.ipynb)

Once it has started itself up, launch the tutorial by clicking `index.ipynb`

*Beware, that if it hasn't been used recently, it can take a very long time to recreate the virtual machine.*
*Beware, all changes will be lost when you close the binder session. If you want to *

## To run using Google Colab

If myBinder doesn't work you can run the same code via the [Google Colabatory](https://colab.research.google.com)

Use the following link: https://colab.research.google.com/github/InfantLab/NotebookDemos/blob/master/index.ipynb


## Shiny example
Also included is a example of using R's intereactive plotting system Shiny using the famous Gapminder data (originally from [cameres](https://github.com/cameres/gapminder-shiny) ). See if you can spot (and fix) the deliberate mistake.

RShiny: [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/yourbrain/notebookdemos/master?urlpath=shiny/gapminder-shiny/)

### Fixed date snapshots 
One nice thing about MyBinder is that it supports using R + RStudio, with libraries pinned to a specific
date snapshot of software from the [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) repository.

When MyBinder loads it looks for the included file `runtime.txt` in this folder. This is a plain text file formatted like:

```
r-<YYYY>-<MM>-<DD>
```

where YYYY-MM-DD is a snapshot at MRAN that will be used for installing libraries. 
This means that all libraries are frozen to that version and so results will be same everytime you use it. 

### Installing libraries
You can also have an `install.R` file that will be executed during build,
and can be used to install the R libraries you require to run your code. It has the format
```
install.packages("dplyr")
install.packages("ggplot2")
```

 

Forked from https://github.com/binder-examples/r

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.

