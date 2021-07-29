# `uni-titlepage`
Copyright (c) Markus Kohm <komascript at gmx.info>

Release:
2021/07/29 v0.6

KOMA presents the title page project

------------------------------------------------------------------------
Creation of title pages is something most authors should not have to do.
But reality is not perfect, so a lot of authors have to do it.  In 2009
KOMA started the titlepage project at <https://komascript.de/titlepage>
to collect real title pages and implement them with a well defined interface.
In 2021 the project has been moved to <https://github.com/komascript/uni-titlepage>
and renamed.

Now, changing from one title page style to another would be very
simple.  Nevertheless implementation of a new title page style may be still
difficult.  But maybe the guys of the title page project would help you.  Just
ask!

# Unpacking and Installation

To unpack and install all files, you can download the source from github
and then run:

    l3build install

Afterwards you can build the manual and the PDFs of the examples using:

    l3build doc

However, if your TeX distributor already distributes a ready for installation
package, you do not need and should not create files and copy them yourself.
Just use the package manager of your TeX distribution to install the package.
