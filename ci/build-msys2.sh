#!/bin/bash -e

. ./ci/build-common.sh

pwd
ls

lldb --batch -o 'run' -k 'bt' -- rst2pdf.exe -c -b 1 --repeat-table-rows DOCS/man/mpv.rst -o mpv.pdf | cat
