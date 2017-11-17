# 522_lab_01

This repository contains a shell script that generates a simple directory
structure common to many data science projects.

It accepts three arguments:

* The first is a MANDATORY string that will be the
project name and name of the root folder (all generated files will live in here).

* The second argument is optional and should be the name of the project author
(will be printed in the copyright statement of the chosen licence).

* The third argument is an optional three letter character string that is
either `"MIT"` or `"GNU"`. If either is supplied, the `LICENCE.md` file that
is created by the shell script will contain the MIT or GNU GPL licence. If
neither is supplied, then the `LICENCE.md` file will contain a "Copyright"
message that will include the authors name if provided.

The directory structure will looksomething like this:

```
.
|
|-- README.md
|-- LICENSE.md
|-- CITATION.md
|
|-- data
|  -- (raw data goes here)
|-- doc
|  -- (text documents go here)
|-- results
|  -- (files geneerated during cleaning analysis go here)
|-- src
|  -- (source code goes here)
```

Note: this is a lab assignment for DSCI 522 in UBC's MDS program.
