" Functions

" enable()
function! testrunnergutter#enable()
  let g:testrunnergutter_enabled = 1
  " run plugin
endfunction

" disable()
function! testrunnergutter#disable()
  " stop plugin
endfunction

" toggle()
function! testrunnergutter#toggle()
  if testrunnergutter_enabled
    testrunnergutter#disable()
  else
    testrunnergutter#enable()
  endif
endfunction
