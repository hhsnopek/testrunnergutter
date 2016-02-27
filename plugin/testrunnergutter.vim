scriptencoding utf-8


if exists('g:loaded_testrunnergutter') || !has('signs') || &cp
  finish
endif

let g:loaded_testrunnergutter = 1

" Function: s:set
" Credit: GitGutter
" File: https://github.com/airblade/vim-gitgutter/blob/master/plugin/gitgutter.vim
function! s:set(var, default)
  if !exists(a:var)
    if type(a:default)
      execute 'let' a:var '=' string(a:default)
    else
      execute 'let' a:var '=' a:default
    endif
  endif
endfunction

call s:set('g:testrunnergutter_enabled', 1)
call s:set('g:testrunnergutter_max_signs', 500)
call s:set('g:testrunnergutter_signs', 1)

" Functions
command -bar TestRunnerGutterEnable call testrunnergutter#enable()
command -bar TestRunnerGutterDisable call testrunnergutter#disable()
command -bar TestRunnerGutterToggle call testrunnergutter#toggle()
