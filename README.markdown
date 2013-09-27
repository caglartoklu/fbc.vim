# fbc.vim

Compiler plugin for FreeBASIC.

Compiles the buffer with FreeBASIC,
and shows the compilation results in quickfix window.

Home page:
[https://github.com/caglartoklu/fbc.vim](https://github.com/caglartoklu/fbc.vim)

Vim.org page:
[http://www.vim.org/scripts/script.php?script_id=2691](http://www.vim.org/scripts/script.php?script_id=2691)

If you need a syntax file for the FreeBASIC,
you can download a syntax file at http://cubaxd.net/?en&p=syntaxfile.


## Changelog

- 0.0.5, 2013-09-27
  - No change in functionality, just hosted the code on Github.
  - All the development will be on Github from now on.
  - Vim.org will be updated if a major change happens.
  - The license has been changed from GPL to 2-clause FreeBSD.
- 0.0.4, 2009-06-26
  - Added one more error format for the warnings.
- 0.0.1, 2009-05-17
  - First, unreleased version.


## Installation

For [Vundle](https://github.com/gmarik/vundle) users:

    Bundle 'caglartoklu/fbc.vim'

For [Pathogen](https://github.com/tpope/vim-pathogen) users:

    cd ~/.vim/bundle
    git clone git://github.com/caglartoklu/fbc.vim

For all other users, simply drop the `fbc.vim` file to your
`plugin` directory.

In Vim, the compilers are not automatically set unlike file type plugins.
To achieve that, type the following into your `.vrimrc` file:

    autocmd BufNewFile,BufRead *.bas compiler fbc

To do it only for the current buffer, you can set the following command,
which will have a temporary effect:

    compiler fbc


## Supported Environments
- Vim (no `+Python` required)
- [FreeBASIC](http://freebasic.net/) compiler


## Usage

This plugin is activated uses Vim's `:make` command.
With the recommended settings, when a `.bas` file is open in a Vim buffer,
`:make` command will activate the plugin and the plugin will compile
the buffer with `fbc` compiler.

The results can be navigated using `:cwindow` command.

Let's take a look to the following code sample:

```vb
Dim c As Integer
i = 9999999999999
For i = 1 To 10
    Print d
Next
```

When this code is compiled with fbc.vim,
your quickfix window will look like this:

![fbc.vim1.png](https://raw.github.com/caglartoklu/fbc.vim/media/fbc.vim1.png)

## License
Licensed with 2-clause license ("Simplified BSD License" or "FreeBSD License").
See the LICENSE file.


## Contact Info
You can find me on
[Google+](https://plus.google.com/108566243864924912767/posts)

Feel free to send bug reports, or ask questions.
