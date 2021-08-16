#
# makefile for project uni-titlepage
# Copyright (c) Markus Kohm, 2011-2021
#
# Developers only!
# --------------------------------------------------------------------
SRC = uni-titlepage.dtx

STYLE	= DHBW KOMAScript Markus-1 Markus-2 Spacer TU-DD TU-HH KIT \
          JT-Aufsaetze JT-Geschichte JT-Typography WWUM

DEFFILE	= $(addprefix title-,$(addsuffix .def,$(STYLE)))

PACKAGE = uni-titlepage.sty $(DEFFILE)

LTXFILE = $(addprefix titlepage-,$(addsuffix .ltx,$(STYLE)))

EXAMPLESRC = $(LTXFILE)

EXAMPLEPDF = $(addsuffix .pdf,$(basename $(EXAMPLESRC)))

DOCSRC = $(EXAMPLESRC) \
	uni-titlepage.drv

DOC = $(addsuffix .pdf,$(basename $(DOCSRC)))

DISTDOC = README \
	  uni-titlepage.pdf

all: unpack doc

unpack: $(SRC)
	l3build unpack
	cp build/unpacked/README.md .

doc: $(SRC)
	l3build doc

dist: unpack
	l3build ctan

clean:
	l3build clean

distclean: clean
	rm -rf build auto

logos: DHBW_d_MOS_195x95_rgb_300.jpg 640px-Logo_KIT.svg.png

DHBW_d_MOS_195x95_rgb_300.jpg:
	wget https://de.wikipedia.org/wiki/Datei:DHBW_d_MOS_195x95_rgb_300.jpg}

640px-Logo_KIT.svg.png:
	wget https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Logo_KIT.svg/640px-Logo_KIT.svg.png
