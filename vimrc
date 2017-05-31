" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.  " Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive' "vim git tool
"Plugin 'tpope/vim-rails'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}


"Plugin for Python (especially python help) (added by cyril)
"Plugin 'klen/python-mode'
Plugin 'python-mode/python-mode'
"YouCompleteMe autocompletion plugin from github (added by cyril)
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree' "File navigation
Plugin 'jistr/vim-nerdtree-tabs' "Keeps nerdtree open in new tabs
Plugin 'easymotion/vim-easymotion'
"Plugin 'kien/ctrlp'         "fuzzy file finder
Plugin 'scrooloose/syntastic' "syntax checker
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'xolox/vim-misc'     "needed for easytags
Plugin 'xolox/vim-easytags' "auto update tags for function lookup
"(deactivated b/c takes to long)
Plugin 'ctrlpvim/ctrlp.vim'  "fuzzy file finder
Plugin 'alvan/vim-closetag' "closing html tags
"Plugin 'Yggdroot/indentLine' "show space indentation with vertical lines
Plugin 'ntpeters/vim-better-whitespace' "Highlight unwanted whitespaces
Plugin 'airblade/vim-gitgutter' "show git diff in gutter (next to line numbers)
Plugin 'vim-airline/vim-airline' "airline pimp-up
Plugin 'vim-airline/vim-airline-themes' "airline pimp-up themes
Plugin 'NLKNguyen/papercolor-theme' "small suported color theme
Plugin 'vim-scripts/AutoComplPop'
Plugin 'nathanaelkane/vim-indent-guides' "show indents better (dont see any diff)
Plugin 'majutsushi/tagbar' "class ouline viewer


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



filetype plugin indent on
set wildmenu

" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"-----------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" User specified keybinding (Added by Cyril!) ------------------------------
:imap jj <Esc>
:imap kk <Esc>:w<Enter>
":nmap <Enter> o<Esc>
:nmap <Space> O<Esc>
" The command below is dangerous: it restarts NT -> sometimes leads to
" problems
:map nt :NERDTree <Enter>
:map ff :CtrlP <Enter>

" Reamap <Leader> from default \ to ,
let mapleader=","
" Let <Leader> point directly to easymotion enabling (remove this when find
" conflicts with other plugins"
"map <Leader> <Plug>(easymotion-prefix)

"Use syntax of pyhton3 for python-mode plugin
let g:pymode_pyhton = 'python3'

" Highlight to long lines
let &colorcolumn="101,".join(range(161,999),",")
" Highlight current line
":set cursorline

let g:closetag_filenames = "*.html*" "Neede for vim-closetag
set runtimepath^=~/.vim/bundle/ctrlp.vim "needed for ctrlp (fuzzy file finder)
:set tags=./../tags; "Search for tags upwards from current files dir
":let g:easytags_dynamic_files=1 "also look for project-specific tag files

:set numberwidth=3
let g:NERDTreeWinSize = 45 "reset default nerdtree window width
"let g:nerdtree_tabs_open_on_console_startup=1 "opens NT on startup

"embedded ruby helpers
inoremap << <%=<Space><Space>%><Esc>hhi
inoremap <j <%<Space><Space>%><Esc>hhi

"easy moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Display tagbar (class overview on right border)
nmap <F8> :TagbarToggle<CR>

" ruby helpers
runtime macros/matchit.vim

" Styling
:set fillchars+=vert:\ "set char in vim window split to whitespace
set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

let g:airline_powerline_fonts = 1
let g:airline_theme='tomorrow'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_left_sep = '»'
"let g:airline_left_sep ='▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number
set rnu "sets relative numbers

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
" Set command line height to 1 (1 line)
:set cmdheight=1
