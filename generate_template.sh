#!/bin/bash

## check that we have a name for the project
if [ $# -eq 0 ]; then
    echo "You must name your root folder!";
    exit 1
fi

## create root folder and navigate to it
mkdir "$1";
cd "$1";

## create the source, data, doc, and results folders
mkdir src;
mkdir data;
mkdir doc;
mkdir results;

## create empty citation and readme files
touch README.md;
touch CITATION.md;

## create licence file with MIT, GNU GPL or no licence
if [[ $3 == "MIT" ]]; then
echo -e "The MIT License (MIT): \n\nCopyright (C) 2017 " "$2" >> LICENCE.md;
echo -e "\n\nPermission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the 'Software'), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE." >> LICENCE.md;
elif [[ $3 == "GNU" ]]; then
echo -e "The GNU General Public License: \n\nCopyright (C) 2017 " "$2" >> LICENCE.md;
echo -e "\n\nThis program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>." >> LICENCE.md;
else
echo -e "Copyright (C) 2017 " "$2" >> LICENCE.md;
fi
