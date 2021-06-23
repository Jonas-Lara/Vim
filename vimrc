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

syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set autochdir 

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
set paste 									" Paste text
set confirm 								" Confirm changes

set incsearch	                            " incremental search
set hlsearch	                            " highlight search results



"""""""""""" Bundle Plugin """"""""""""""""


" set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
" alternatively, pass a path where Vundle should install plugins 
"call vundle#begin('~/some/path/here') 

" let Vundle manage Vundle, required 
Plugin 'VundleVim/Vundle.vim' 
" All of your Plugins must be added before the following line 
			

	Plugin 'preservim/nerdtree' |					" Project and file navigation
				\ Plugin 'ryanoasis/vim-devicons'

	Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim

	Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
	
	Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
	
	Plugin 'nlknguyen/papercolor-theme'			" Paper Color scheme
	
	Plugin 'joshdick/onedark.vim'				" Onedark scheme
	
	Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
	
	Plugin 'rosenfeld/conque-term'              " Consoles as buffers
	
	Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
		
	Plugin 'tpope/vim-commentary'               " Comment stuff out
    
    Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    
    
    


call vundle#end()            " required 
filetype plugin indent on    " required 

"""""""""""" Start Powerline Settings """"""""""""""""

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme PaperColor              " set color scheme
    endif
endif

""""""""""" END of PowerLine Settings  """""""""""""""

"""""""""""" AirLine settings """"""""""""""""

let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
