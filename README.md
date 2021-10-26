# `uni-titlepage`

Copyright (c) Markus Kohm <komascript at gmx.info>

Release: 2021/11/01 v0.7a

License: LPPL 1.3c

KOMA presents the title page project
----------------------------------------------------------------------------

This work may be distributed and/or modified under the conditions of
the LaTeX Project Public License, version 1.3c of the license.
The latest version of this license is in
    http://www.latex-project.org/lppl.txt
and version 1.3c or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status "maintained".

The Current Maintainer and author of this work is Markus Kohm.

----------------------------------------------------------------------------

# ABSTRACT

Creation of title pages is something most authors should not have to do.
But reality is not perfect, so a lot of authors have to do it.  In 2009
KOMA started the title page project at <https://komascript.de/titlepage>
to collect real title pages and implement them with a well defined interface.
In 2021 the project has been moved to <https://github.com/komascript/uni-titlepage>
and renamed.

Now, changing from one title page style to another would be very
simple.  Nevertheless implementation of a new title page style may be still
difficult.  But maybe the guys of the title page project would help you.  Just
ask!

# Unpacking and Installation for Developers and Distributors

To unpack and install all files, you can download the source from github
and then run:

    l3build install

Afterwards you can build the manual and the PDFs of the examples using:

    l3build doc

As an alternative you can use the CTAN source distribution. This already
contains the user manual and the PDFs of the example files. So you only have
to run

    tex uni-titlepage.dtx

to generate the package file `uni-titlepage.sty`, the title definition files
`title-*.def` and the example titlepages `titlepage-*.tex`.

Please note, the `title-*.def` files are run-time files. Together with
`uni-titlepage.sty` they have to be placed in `tex/latex/uni-titlepage` inside
a TDS tree. All files `titlepage-*.tex` and `titlepage-*.pdf` as well as
`uni-titlepage.pdf` are part of the documentation and should be placed in
`doc/latex/uni-titlepage/` of the TDS tree.

# Unpacking and Installation for Users

Users can use the installation described at
[Unpacking and Installation for Developers and Distributors]. However, if
your TeX distributor already distributes a ready for installation package, you
do not need and should not create files and copy them yourself. Just use the
package manager of your TeX distribution to install the package.

# How to Contribute

If you have made a title definition that is not specific for a single project
but could be of interest for other users, you can either

* make your own `uni-titlepage-FOO` package with its own manual and [upload it
to ctan](https://www.ctan.org/upload),
* contribute in adding it to `uni-titlepage`.

The first option has the advantage, that you are free. There won't be any code
reviews by the `uni-titlepage` developers. You don't need to use the same
coding style. There is not need to accept the license of `uni-titlepage`
etc. But in this case you have to take care to keep it compatible with future
releases of `uni-titlepage` and it will not be presented in the
`uni-titlepage` manual.

The second option has the advantage, that after accepting your code, the
`uni-titlepage` developers will try to keep it working even if they change
`uni-titlepage`. But there are several restrictions to your code, before it
will be accepted. For example, you should always try to use general options,
if possible. *Static text* (not handled by options) should be configurable via
`\newcaptionname`, `\providecaptionname` and `\renewcaptionname` and should be
available at least in English and German (but if we can, we help in
translating them). The coding style and quality is also a criterion.

