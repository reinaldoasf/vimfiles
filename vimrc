  "syntax on
  set number
  set tabstop=2
  "Tabs as spaces
  set expandtab
  "Force to show command in bottonbar
  set showcmd
  "Show a horizontal line in cursor position
  "set cursorline
  filetype indent on
  
  "Autocomplete menu
  set wildmenu
  
  "adds to the path recursively
  set path+=**
  "store lots of :cmdline history
  set history=1000
  set hlsearch        "hilight searches by default
  set showbreak=↪\ 
  set showmode        "show current mode down the bottom
  "spellcheck langs
  set spelllang=en_us,pt_br
  "try to make possible to navigate within lines of wrapped lines
  nmap <Down> gj
  nmap <Up> gk
  set colorcolumn=100
  highlight ColorColumn ctermbg=2
  
  "add a new line
  nmap m o<ESC>k
  "dont continue comments when pushing o/O
  au FileType * set formatoptions-=o
  
  "statusline setup when lighline is not present
  set statusline=%f               "tail of the filename
  set statusline+=%m              "modified flag
  set statusline+=%=              "left/right separator
  set statusline+=%{strlen(&ft)?&ft:'none'}\ -\      "filetype
  set statusline+=%c,             "cursor column
  set statusline+=%l/%L           "cursor line/total lines
  set statusline+=\ %P            "percent through file
  set laststatus=2
  
  "indent settings for specific langs
  au FileType tex setlocal ts=2 sw=2 sts=2 tw=79 fo+=t fo-=l
  
  "spellcheck for txt and tex files
  au BufNewFile,BufRead,BufEnter *.tex setlocal spell
  au BufNewFile,BufRead,BufEnter *.txt setlocal spell
  
  "save undos after file closes
  set undofile
  set undodir=$HOME/.vim/tmp//,/tmp// " where to save undo histories
  set undolevels=100         " How many undos
  set undoreload=1000       " number of lines to save for undo
  
  "setting dir for swp files
  set dir=$HOME/.vim/tmp//,/tmp//
  set backupdir=$HOME/.vim/tmp//,/tmp//
  set backup

  "set dracula colorscheme 
  syntax enable"
  "Force transparent background independly of the colorscheme
  hi Normal guibg=NONE ctermbg=NONE
  
  "key mapping for tab navigation
  nmap <Tab> gt
  nmap <S-Tab> gT
  
  "Plugins remember to use :PluginInstall to use them or just comment it it dont like it
  "Nerd tree file search
  call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'frazrepo/vim-rainbow'
    Plug 'itchyny/lightline.vim'
    Plug 'fcpg/vim-farout'
  call plug#end()
  
  colorscheme farout
  "au FileType c,cpp,js, call rainbow#load()
  "set rainbow brackets active usefull for some languages
  let g:rainbow_active = 1
  nnoremap <C-o> :NERDTree<CR>

