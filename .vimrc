" Vundle Plugin Manager 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim', { 'as': 'dracula' }
Plugin 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plugin 'scrooloose/nerdcommenter', { 'as': 'nerdcommenter'}
Plugin 'scrooloose/syntastic', {'as': 'syntastic'}
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


" General settings

set nocompatible " Compatible mode means compatibility to venerable old vi. When you :set compatible, all the enhancements and improvements of Vi Improved are turned off
set hidden " It hides buffers instead of closing them. 
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks and start of insert action


" Indention Options

set autoindent " always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
" filetype off " Attempt to determine the type of a file based on its name and possibly its contents.
set shiftround " When shifting lines, round the indentation to the nearest multiple of “shiftwidth.”
set shiftwidth=4 " When shifting, indent using four spaces.
set smarttab " Insert “tabstop” number of spaces when the “tab” key is pressed.
set tabstop=4 " Indent using four spaces.


" Search Options

set hlsearch " Enable search highlighting.
set ignorecase " Ignore case when searching.
set incsearch " Incremental search that shows partial matches.
set smartcase " Automatically switch search to case-sensitive when search query contains an uppercase letter.


" Performance Options

set complete-=i " Limit the files searched for auto-completes.
set lazyredraw "  Don’t update screen during macro and script execution.


" Text Rendering Options

set display+=lastline " Always try to show a paragraph’s last line.
set encoding=utf-8 " Use an encoding that supports unicode.
set linebreak " Avoid wrapping a line in the middle of a word.
set scrolloff=1 " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor.
syntax enable " Enable syntax highlighting.
set nowrap " Enable line wrapping.


" User Interface Options
set laststatus=2 " Always display the status bar.
set ruler " Always show cursor position.
set wildmenu " Display command line’s tab complete options as a menu.
set tabpagemax=50 " Maximum number of tab pages that can be opened from the command line.
colorscheme gruvbox " Change color scheme.
set cursorline " Highlight the line currently under cursor.
set number " Show line numbers on the sidebar.
"set relativenumber " Show line number on the current line and relative numbers on all other lines.
set noerrorbells " Disable beep on errors.
set visualbell " Flash the screen instead of beeping on errors.
set mouse=a " Enable mouse for scrolling and resizing.
set title " Set the window’s title, reflecting the file currently being edited.
set background=dark " Use colors that suit a dark background.


" Code Folding Options
set foldmethod=indent " Fold based on indention levels.
set foldnestmax=3 " Only fold up to three nested levels.
set nofoldenable " Disable folding by default.


" Syntastic Settings

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1 " Setup Syntastic to automatically load errors into the location list.
let g:syntastic_check_on_open = 1 " By default, Syntastic does not check for errors when a file is loaded into Vim. This line allows such operation. 
let g:syntastic_error_symbol = "✗" " By default, Syntastic uses arrow symbols to indicate line with error. To spice things up, you can specify any Unicode symbol as the symbol. 
"let g:syntastic_warning_symbol = "<img draggable="false" class="emoji" alt="⚠" src="https://s0.wp.com/wp-content/mu-plugins/wpcom-smileys/twemoji/2/svg/26a0.svg">"

