"""""""""""""""""""""""""""""
""""POULPY ULTIMATE VIMRC""""
"""""""""""""""""""""""""""""

"Important
set nocompatible "No compatibility with VI, must be first
let mapleader = ',' "remap <leader> into ',' (instead of '\') 

"Enable plugins
syntax on
filetype plugin on
filetype indent on

"Divers
set history=1000 "on garde les 1000 dernière commandes :history pour voir
set backspace=indent,eol,start "Allow backspace in insert mode
set ruler "shows current position
set autoread "when file is changed from the outside
set encoding=utf-8 "Modifier l'encodage
set showcmd "show information about current command in bottom line
set nu "Affiche les numéro de ligne
set noshowmatch "N'affiche pas les parenthèses correspondantes
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list "Affiche les caractères louches
"set cursorline "Affiche en surbrillance la ligne qui contient le curseur
"set mouse=a "Active la souris en mode shell

"Gestion des indent
set autoindent
set smartindent
set smarttab
set shiftwidth=4
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
set incsearch "highlight search as you type
set magic "pour les regex

set hlsearch "highlight shearched phrase

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
map <F1> :execute 'TagbarToggle'<cr>
map <F2> :execute 'GundoToggle'<cr> 
map <F3> :execute 'MRU'<cr> 
map <F4> :execute 'NERDTreeToggle' . getcwd()<cr>

"""""""""""
""PLUGINS""
"""""""""""

"Chargement des plugins
execute pathogen#infect()

"Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let laststatus=2
"set noshowmode

"Disable matchparen plugin at vim opening (turn of parenthesis matching)
let g:loaded_matchparen = 1

"Disable showmarks plugin at vim opening
let g:showmarks_enable = 1
"Affiche juste les marques suivantes :
let g:showmarks_include="abcdefhijklmnopqrstuvwxyzxABCDEFGHIJKLMNOPQRSTUVWXYZ"

"Easymotion (dual character search)
nmap <Plug>(easymotion-prefix)S <Plug>(easymotion-s2)
nmap <Plug>(easymotion-prefix)T <Plug>(easymotion-t2)

"Tabularize
nmap <Leader>t :Tabularize /

"Rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Startify
let g:startify_custom_header = map(split(system(
            \ 'fortune -as | cowsay -x -f $(ls /usr/share/cowsay/cows | sort -R | tail -1)'
            \), '\n'), '"   ". v:val') + ['','']

"Coloration syntaxique
let g:hybrid_use_Xresources = 1
set background=dark
colorscheme hybrid

"Highlight changes
highlight Search ctermfg=LightMagenta cterm=underline,bold  ctermbg=NONE
highlight IncSearch ctermfg=LightMagenta cterm=underline,bold  ctermbg=NONE
