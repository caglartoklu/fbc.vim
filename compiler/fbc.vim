" Vim compiler file
" SCRIPT FILE NAME:
"   fbc.vim
" COMPILER:
"   FBC(FreeBASIC compiler)
"   http://www.freebasic.net/
" AUTHOR:
"   Caglar Toklu
"   https://github.com/caglartoklu/fbc.vim
" HISTORY:
" - 0.0.5, 2013-09-27
"   - No change in functionality, just hosted the code on Github.
"   - All the development will be on Github from now on.
"   - Vim.org will be updated if a major change happens.
"   - The license has been changed from GPL to 2-clause FreeBSD.
"   0.0.4, 2009-06-26
"     - Added one more error format for the warnings.
"   0.0.1, 2009-05-17
"     - First, unreleased version.
" INSTALL:
"  - Drop the script into your compiler directory.
"    For example, In Micro$oft Windows, it is "C:\Program Files\Vim\vimfiles\compiler\"
"    and in Linux, it is "$HOME/.vim/compiler" directory.
"  - In Vim, the compilers are not automatically set
"    unlike file type plugins..
"    To achieve that, type the following into your VIMRC file:
"    autocmd BufNewFile,BufRead *.bas compiler fbc

if exists("current_compiler")
  finish
endif
let current_compiler = "fbc"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" The default compiler
CompilerSet makeprg=fbc\ %

"Sample program to test:"
"    for i = 1 to 10
"        print abc
"    next
"When the command
"    fbc a.bas
"is launched, it gives the following output:
"    a.bas(1) error 41: Variable not declared, i in 'for i = 1 to 10'
"    a.bas(2) error 41: Variable not declared, abc in 'print abc'
"    a.bas(2) warning 12(0): Implicit variable allocation, abc

" So we can use the following error format(s):
CompilerSet errorformat=%f(%l)\ error\ %n:\ %m
CompilerSet errorformat+=\%f(%l)\ warning\ %n(%*[0123456789]):\ %m

