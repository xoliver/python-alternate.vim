# python-alternate.vim

Easy python file &lt;--&gt; python test file switching if your python test files live in a `tests` folder alongside the implementation files and the naming is similar (`something.py` <-> `tests/test_something.py`).

Add your preferred binding to your vim config like this (this one does for `<leader> .`):

`autocmd FileType python nnoremap <silent> <leader>. <Esc>:call OpenPythonAlternate()<CR>`

**Inspiration**

Based on [vim-open-alternate](https://github.com/cyphactor/vim-open-alternate ), which does not have python and is unsupported and is based on Gary Bernhardt's [dotfiles](https://github.com/garybernhardt/dotfiles/blob/master/.vimrc ).
