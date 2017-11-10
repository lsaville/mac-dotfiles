set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
call vundle#begin()
" " let Vundle manage Vundle, required
" "
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rakr/vim-one'
Plugin 'elmcast/elm-vim'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"

" Making leader a space
let mapleader = " "

" Disable polygot for elm thats being required directly.
let g:polyglot_disabled = ['elm']

" center the cursor vertically or unset it, 0 is default
set scrolloff=0
if !exists('*VCenterCursor')
  augroup VCenterCursor
  au!
  au OptionSet *,*.*
    \ if and( expand("<amatch>")=='scrolloff' ,
    \         exists('#VCenterCursor#WinEnter,WinNew,VimResized') )|
    \   au! VCenterCursor WinEnter,WinNew,VimResized|
    \ endif
  augroup END
  function VCenterCursor()
    if !exists('#VCenterCursor#WinEnter,WinNew,VimResized')
      let s:default_scrolloff=&scrolloff
      let &scrolloff=winheight(win_getid())/2
      au VCenterCursor WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff-winheight(win_getid())/2
    else
      au! VCenterCursor WinEnter,WinNew,VimResized
      let &scrolloff=s:default_scrolloff
    endif
  endfunction
endif

" toggle between VCenterCursor and scrolloff=0
nnoremap <leader>zz :call VCenterCursor()<CR>

" " keymap for easy pane motion, apparently obviated by the
" vim-tmux-navigation

"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Having both relative and absolute line numbering
set relativenumber
set number

" " kill the swp files
set nobackup
set noswapfile
" " spacing n stuff
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set autoindent
set mouse=a
set pastetoggle=<leader>p
set showcmd

" " nerdtree access
nnoremap <leader>n :NERDTree<cr>

"Colorscheme
colorscheme one
autocmd Colorscheme * highlight Normal ctermbg=None
autocmd Colorscheme * highlight NonText ctermbg=None

" Switch syntax highlighting on
syntax on

"Set background as dark
set background=dark

"Don't show the splash screen on startup
set shortmess=I
