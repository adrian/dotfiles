" Initialise the pathogen plugin
call pathogen#infect()
call pathogen#helptags()

" turn on syntax highlighting according to the current value of 'filetype'
syntax on

" Load the plugins and indent for the detected file type
filetype plugin indent on

set autoindent          " copy the indentation from the previous line when
                        " starting a new line 

set shiftwidth=4        " You can use ">>" and "<<" to shift text right and
                        " left. This tells vim how much to move each time.

set shiftround          " This rounds the shift amount to the nearest multiple
                        " of shiftwidth.

set ruler               " When the statusline is visible this shows the row and
                        " column.

set tw=0                " The number of characters at which to insert a newline
                        " when typing. Setting to 0 turns it off.

set expandtab           " When you hit tab, insert spaces.

set tabstop=4           " The number of spaces to insert when you hit tab. It's
                        " most useful to set this to the same value as 
                        " shiftwidth

set backup              " Make a backup of files edited
set bex=.bak            " The extension to give backup files
set backupdir=~/bak     " Where to put your backup files

set incsearch           " highlight next matching word as search term is being
                        " entered

set history=100         " size of search history buffer

set wildmode=list:full  " tab on command completion will show all matches

set ignorecase          " ignore case when searching
set smartcase           " ignore case unless the search term has uppercase
                        " letter

"set nowrapscan          " don't wrap searching past end of buffer

set colorcolumn=80      " highlight column 80

" show whitespace
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list

" bind pastetoggle mode to F2
" useful when pasting large amount of text as vi won't
" do all it's usual formatting, e.g. indenting
set pastetoggle=<F2>

" enable the use of a mouse
"set mouse=a

" change the mapleader from \ to ,
let mapleader=","

" include lines numbers
set number

" select a colorscheme
" http://hcalves.deviantart.com/art/Mustang-Vim-Colorscheme-98974484
colorscheme mustang
