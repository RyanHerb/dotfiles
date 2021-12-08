" Ryan Herbert's vim configuration

""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""

set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set hidden
set signcolumn=yes:2
set relativenumber
set number
set spell
set title
set ignorecase
set smartcase
set undofile
set wildmode=longest:full,full
set nowrap
set list
set listchars=tab:▸\ ,trail:·
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard+=unnamedplus
set confirm
set backup
set backupdir=~/.local/share/nvim/backup//
set updatetime=300
set redrawtime=10000


""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""

" Disable Arrow keys
imap  <Up>     <NOP>
imap  <Down>   <NOP>
imap  <Left>   <NOP>
imap  <Right>  <NOP>
map   <Up>     <NOP>
map   <Down>   <NOP>
map   <Left>   <NOP>
map   <Right>  <NOP>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Make Y behave like the other capitals
nnoremap Y y$

" Keep it centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Open the current file in the default program
nmap <leader>x :!xdg-open %<cr><cr>

" Quicky escape to normal mode
imap jj <esc>

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

cmap w!! %!sudo tee > /dev/null %

"""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""

" Automatically install vim-plug
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/abolish.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/floatterm.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/markdown-preview.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/pasta.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/smooth-scroll.vim
source ~/.config/nvim/plugins/surround.vim
source ~/.config/nvim/plugins/targets.vim
source ~/.config/nvim/plugins/vim-test.vim
source ~/.config/nvim/plugins/visual-multi.vim
source ~/.config/nvim/plugins/which-key.vim

call plug#end()
doautocmd User PlugLoaded
