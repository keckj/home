"""""""""""""""""""""""""""""
""""POULPY ULTIMATE VIMRC""""
"""""""""""""""""""""""""""""

"Important
set nocompatible "No compatibility with VI, must be first
let mapleader = ','  "REMAPE LE <leader> EN ',' A LA PLACE DE '\' 

"Enable plugins
filetype plugin on
filetype indent on

"Divers
set backspace=indent,eol,start "Allow backspace in insert mode
set ruler "shows current position
set guifont=Courier\12 "Modifier la police
set encoding=utf8 "Modifier l'encodage
set autoread "when file is changed from the outside
set showcmd "show when leader pressed
set history=1000 "on garde les 1000 dernière commandes :history pour voir
set showcmd "show information about current command in bottom line
set nu "Affiche les numéro de ligne
set noshowmatch "N'affiche pas les parenthèses correspondantes
"set list "Affiche les caractères louches
"set cursorline "Affiche en surbrillance la ligne qui contient le curseur
"set mouse=a "Active la souris en mode shell

"Gestion des indent
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
set expandtab "Supprime les tabulation et met des espaces à la place

"Autocomplétion
set wildmenu "affiche le menu
set wildmode=list:longest,list:full
set wildignore=*.o,*.r,*.so,*.tar,*.tgz "on ignore des types de fichiers pour la complétion

"Recherche
set ignorecase "recherche insensible à la casse
set smartcase "sauf si il y a une majuscule dedans
set hlsearch "highlight shearched phrase
set incsearch "highlight search as you type
set magic "pour les regex

"Word wrapping
set wrap
set linebreak
set nolist

"Backup files"
"On ne garde aucune copie (utiliser git de préférence)
set nobackup
set nowb
set noswapfile
"set backupdir=~/.vim/backup/ "Backup dir must exist if backup set

"Correction orthographique
set spelllang=en,fr
set spellsuggest=5
"set spell "active la surbrillance des fautes dans les commentaires

"Autofolding des blocs
"set foldmethod=syntax
"set foldtext=MyFoldFunction()
"voir page vim imag
"Fold manuel:
"Passer en mode visuel, selectionner bloc et taper :fold
"Pour ouvrir ou fermer le fold taper : zo ou zc

"No annoying sounderror
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"256 colors
set t_Co=256


"""""""""""""""""""
""CUSTOM MAPPINGS""
"""""""""""""""""""
"Specific filetype mappings are in ~/.vim/after/ftpplugin/

"Checking and unchecking spell correction
map <leader>ss : setlocal spell!<cr>

"Disable highlight (usefull after a search)
map <silent> <leader><cr> :noh<cr>

"Key binding to open taglist, MRU or NERDTree
map <F2> :execute 'TlistToggle'<cr>
map <F3> :MRU<cr> 
map <F4> :execute 'NERDTreeToggle' . getcwd()<cr>

"Default key binding to compile (a makefile must be in CWD)
map <F5> :!clear && make<cr>


"""""""""""
""PLUGINS""
"""""""""""

"Chargement des plugins

execute pathogen#infect()

if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif
let g:airline_powerline_fonts=1
let g:airline_symbols.space = "\ua0"
let g:bufferline_echo = 0
let laststatus=2
set noshowmode

"Transform <Leader> key of easymotion from <leader><leader> to <leader> (plugin compatibility)
"let g:EasyMotion_leader_key = '<leader>'

"Disable matchparen plugin at vim opening (turn of parenthesis matching)
let g:loaded_matchparen = 1

"Disable showmarks plugin at vim opening
"let g:showmarks_enable = 1
"Affiche juste les marques suivantes :
let g:showmarks_include="abcdefhijklmnopqrstuvwxyzxABCDEFGHIJKLMNOPQRSTUVWXYZ"


"Coloration syntaxique
syntax on
let g:hybrid_use_Xresources = 1
colorscheme hybrid "try desert or comment the line if you don't like your actual colors 
set background=dark
