# A quick Jupyter + R ( + mybinder.org) tutorial for social scientists

This repository contains a Jupyter (RKernel) notebook file which walks you through some of the basic ways to use notebooks for reproducible data analysis. 

It is designed to launch from Binder too. 

Jupyter+R: [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/yourbrain/notebookdemos/master)

RStudio: [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/yourbrain/notebookdemos/master?urlpath=rstudio)

One nice thing about MyBinder is that it supports using R + RStudio, with libraries pinned to a specific
snapshot on [MRAN](https://mran.microsoft.com/documents/rro/reproducibility).

You need to have a `runtime.txt` file in this folder formatted like:

```
r-<YYYY>-<MM>-<DD>
```

where YYYY-MM-DD is a snapshot at MRAN that will be used for installing
libraries. This means that all libraries are frozen to that version and so results will be same everytime you use it. 

You can also have an `install.R` file that will be executed during build,
and can be used to install the libraries you require.

Both [RStudio](https://www.rstudio.com/) and [IRKernel](https://irkernel.github.io/)
are installed by default, so you can use either the Jupyter notebook interface or
the RStudio interface.

Forked from https://github.com/binder-examples/r

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.

