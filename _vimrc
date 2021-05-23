  
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

"""""""""""" General Settings """"""""""""""""
" Vi compatible

syntax on
set encoding=utf-8
set tabstop=4
set expandtab
set shiftwidth=4
set number 
set ff=unix
set hlsearch
set incsearch
set mouse+=a 
set confirm 
set paste

"""""""""""" End general Settings """"""""""""""""

"""""""""""" Remap a few keys """"""""""""""""
" Remap a few keys for Windows behavior
source $VIMRUNTIME/mswin.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
"""""""""""" End remap a few keys """"""""""""""""

"""""""""""" Vim-Plug """"""""""""""""

" vim-plug config
call plug#begin()

" Intellisense for vim
Plug 'OmniSharp/omnisharp-vim'

" Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline'

" Themes for  airlines
Plug 'vim-airline/vim-airline-themes' 

" Powerline fonts plugin
Plug 'Lokaltog/powerline'                 

call plug#end()
" plugin config

"""""""""""" OmniSharp settings """"""""""""""""
" Use the stdio version of OmniSharp-roslyn - this is the default
let g:OmniSharp_server_stdio = 1

"""""""""""" AirLine settings """"""""""""""""
" Themes for vim-airline
let g:airline_theme='tomorrow'
" dark, light, molokai, laederon, tomorrow, papercolor
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"""""""""""" End Vim-Plug """"""""""""""""

