#!/usr/bin/env texlua

--[[
  Build script for the uni-titlepage project
  Copyright (C) 2021 Markus Kohm

  This file is part of the build system of uni-titlepage.

  It may be distributed and/or modified under the conditions of the
  LaTeX Project Public License (LPPL), either version 1.3c of this
  license or (at your option) any later version.  The latest version
  of this license is in the file

    https://www.latex-project.org/lppl.txt
]]

release_info = "2021/07/29 v0.6"

-- Bundle and modules

module       = "uni-titlepage"

unpackfiles  = { "uni-titlepage.dtx" }

installfiles = { "*.sty", "*.def" }

typesetdemofiles = { "titlepage-*.ltx" }

demofiles    = { "titlepage-*.pdf", typesetdemofiles.unpack }

typesetfiles = { "uni-titlepage.drv" }

docfiles     = { "KITLogo_RGB.pdf",
                 typesetfiles.unpack, demofiles.unpack }

-- Package

packtdszip = false

-- CTAN information

ctanpkg   = "uni-titlepage"

uploadconfig = {
  pkg         = "uni-titlepage",
  version     = release_info,
  author      = "Markus Kohm",
  licencse    = "lppl1.3c",
  summary     = "extended uni-titlepages (with several demo configurations)",
  topic       = "uni-titlepage",
  ctanPath    = "/macros/latex/contrib/uni-titlepage",
  bugtracker  = "https://github.com/komascript/uni-titlepage/issues",
  home        = "https://github.com/komascript/uni-titlepage",
  repository  = "https://github.com/komascript/uni-titlepage.git",
}

-- Detail how to set the version automatically
-- Example: `l3build tag --date 2021/07/29 v0.5e'

tagfiles = {"*.dtx","README.md","build.lua"}

function update_tag (file,content,tagname,tagdate)
   tagname = string.gsub (tagname, "v(%d+%.%d+%a?)", "%1")
   
   if string.match (file, "%.dtx$") then
      return string.gsub (content,
                          "%d%d%d%d%/%d%d%/%d%d v%d+%.%d+%a?",
                          tagdate .. " v" .. tagname )
   elseif string.match (file, "%.md$") then
      return string.gsub (content,
                          "%d%d%d%d%/%d%d%/%d%d v%d+%.%d+%a?",
                          tagdate .. " v" .. tagname )
   elseif string.match (file, "%.lua$") then
      return string.gsub (content,
                          '\nrelease_info = "%d%d%d%d%/%d%d%/%d%d v%d+%.%d+%a?"\n',
                          '\nrelease_info = "' .. tagdate .. " v" .. tagname .. '"\n')
   end
   return content
end

-- Find and run build system

kpse.set_program_name("kpsewhich")
if not release_date then
  dofile(kpse.lookup("l3build.lua"))
end
