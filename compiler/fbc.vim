" -*- vim -*-
" FILE: fbc.vim
" PLUGINTYPE: compiler
" DESCRIPTION: Vim compiler plugin for FreeBASIC
" HOMEPAGE: https://github.com/caglartoklu/fbc.vim
" LICENSE: https://github.com/caglartoklu/fbc.vim/blob/master/LICENSE
" AUTHOR: caglartoklu

if exists("current_compiler")
  finish
endif
let current_compiler = "fbc"

if exists(":CompilerSet") != 2  " older Vim always used :setlocal
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
