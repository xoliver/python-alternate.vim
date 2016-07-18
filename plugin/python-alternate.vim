" Based on vim-open-alternate, which does not have python and is unsupported
" https://github.com/cyphactor/vim-open-alternate
" and is based on
" https://github.com/garybernhardt/dotfiles/blob/master/.vimrc#L288
function! OpenPythonAlternate()
  let current_file = expand("%")
  let file = substitute(current_file, '^\./', '', '')  " Remove leading dot slash

  if match(file, 'test_.*\.py$') != -1  " Is it a python test file?
    let alternate = substitute(file, 'tests/test_', '', '')
  elseif match(file, '^.*\.py$') != -1  " Is it a python file?
	let alternate = substitute(file, '\([^/]*\.py$\)', 'tests\/test_\1', '')
  else
	echo 'OpenAlternate: wrong file type, it needs to be .py!'
	return
  endif

  exec ':e ' . alternate
endfunction
