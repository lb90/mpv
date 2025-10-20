#!/bin/bash -e

. ./ci/build-common.sh

pwd
ls

#lldb --batch -o 'b main' -o 'run' -o 'b ExitProcess' -o 'b TerminateProcess' -o 'continue' -o 'bt' -o 'quit' -k 'bt' -k 'quit' -- rst2pdf.exe -c -b 1 --repeat-table-rows DOCS/man/mpv.rst -o mpv.pdf | cat


lldb --batch -o 'run' -o 'quit' -k 'bt' -k 'image list' -k 'quit' -- python /c/a/_temp/msys64/clangarm64/bin/rst2pdf.exe -c -b 1 --repeat-table-rows DOCS/man/mpv.rst -o mpv.pdf | cat