# 522_lab_01

This repository contains a shell script that generates a simple directory
structure common to many data science projects.

It accepts two arguments: the first is a three letter character string that is
either `"MIT"` or `"GNU"`. If either is supplied, the `LICENCE.md` file that
is created by the shell script will contain the MIT or GNU GPL licence. If
neither is supplied, then the `LICENCE.md` file is empty. The second is an
string that will be print in the copyright statement of the chosen licence.

Note: this is a lab assignment for DSCI 522 in UBC's MDS program.
