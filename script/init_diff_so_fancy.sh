#!/bin/bash

# Configure git to use diff-so-fancy for all diff output
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Improved colors for the highlighted bits
git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "11"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

# Should the pesky + or - at line-start be removed. (Default: true)
git config --bool --global diff-so-fancy.stripLeadingSymbols false

# Should the first block of an empty line be colored. (Default: true)
git config --bool --global diff-so-fancy.markEmptyLines false


echo "Ending"
