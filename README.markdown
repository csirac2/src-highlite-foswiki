Source-Highlight T/Foswiki "TML" Syntax
=======================================

These are some .lang files for use with GNU Source-Highlight
http://www.gnu.org/software/src-highlite/ intended for T/Foswiki "Topic Markup
Language" wiki syntax.

TML has text formatting capabilities typical of most wikis, but with an added
challenge: it features an "inside-out, left-to-right" text-replacement macro
capability. This is exploited in weird and wonderful ways, such as writing macro
expressions that emit other macro expressions (sometimes recursively). See
http://foswiki.org/System/Macros#InsideOutLeftToRight

This first attempt has resulted in a spaghetti-esque pile of tml\_\*.lang files,
a better solution would be very welcome. It does up to three levels of
%MACROS{"%within{"%macros%"}%"}%, & the same for the $percntDELAYED equivalent.

Foswiki itself expands macros nested up to 16 deep.

TODO
----
* Spaghetti arrangement of .lang files. Find a more efficient way.
* Only colours to three levels of nesting for %MACROs and $percntDELAYED macros
* No GluePlugin syntax inside $percntDELAYED macro expressions
* Only understands double-quoted strings for macro arguments. Single quotes
  not supported yet.
* No .outlang yet
* Trailing whitespace not working yet

NOTES
-----
This repo layout inspired by https://github.com/zenzike/src-highlite-haskell
