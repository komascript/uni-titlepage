# LaTeX Package `uni-titlepage`

Copyright © 2009–2026 Markus Kohm

Release: 2026-02-05 v1.5

License: LPPL 1.3c

CTAN Location: https://www.ctan.org/pkg/uni-titlepage

KOMA presents universal titlepages with configuration options and predefined
styles.

----------------------------------------------------------------------------

The project is currently hosted and managed on
[Codeberg](https://codeberg.org/komascript/uni-titlepage). For safty reasons,
the repository will continue to be mirrored on
[GitHub](https://github.com/komascript/uni-titlepage). However,
[bug
reports](https://codeberg.org/komascript/uni-titlepage/issues?q=&type=all)
and
[pull requests](https://codeberg.org/komascript/uni-titlepage/pulls) will only
be acknowleged on Codeberg.

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

Creation of title pages is something most authors should not have to do.  But
reality is not perfect, so a lot of authors have to do it.  In 2009 KOMA
started the title page project at https://komascript.de/titlepage to collect
real title pages and implement them with a well defined interface.  In 2021
the project has been moved to https://github.com/komascript/uni-titlepage and
renamed.

Now, changing from one title page style to another would be very simple.
Nevertheless implementation of a new title page style may be still difficult.
But maybe the guys of the title page project would help you.  Just ask!

# Download and Installation for Users

[Releases of `uni-titlepage` are available from
CTAN.](https://www.ctan.org/pkg/uni-titlepage) However, instead of using the
source code release from CTAN, you should install `uni-titlepage` using the
package manager of your TeX distribution. Updates should also be installed
using either the MiKTeX console or the TeX Live manager.

# Unpacking and Installation for Developers and Distributors

To unpack and install all files, you can download the source from github
and then run:

    l3build install --full

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

# How to Contribute

If you have made a title definition that is not specific for a single project
but could be of interest for other users, you can either

- make your own `uni-titlepage-FOO` package with its own manual and
  [upload it to ctan](https://www.ctan.org/upload), ´
- contribute in adding it to `uni-titlepage`.

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

# Hot to Report Issues

If you think you have found a bug (or another kind of issue) using
`uni-titlepage` you should use the [issue
tracker](https://codeberg.org/komascript/uni-titlepage/issues?q=&type=all).
Please first search for similar issues already reported and maybe also already
fixed and closed. Maybe the replies to such a similar report would help you
too.

If your issue is new, you should report it also using the [issue
tracker](https://codeberg.org/komascript/uni-titlepage/issues?q=&type=all).
Please be kind, not only when writing the report but also when reading replies
and commenting or answering. And please always add a minimal working example
and usually the relevant parts of the log-file to your report. Please use the
[markdown for code](https://docs.codeberg.org/markdown/preformatted-text/) to
add such files into the text of your report. The correct language identifier
for LaTeX code would be `latex`. For `log`-files you won't need any language
identifier. Usually you should not use attachments for code or log-files
unless you've been asked to do so. And please note, reports should always be
self-containing. External links often break and so the report become useles.

# How to Say Thank you for my Work

Hey, I'm doing this as a hobby. So no need to say thank you. But I'm a vain
fop, so I'm certainly up for a quick thank you by email. On komascript.de you
can find an [explanation of my wishes](https://komascript.de/wunschliste) if
you want to give more. If you don't understand German, just click to links at
that page.
