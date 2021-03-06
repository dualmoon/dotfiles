set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bdauria/angular-cli.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'

call vundle#end()

" I'm not really sure what this does honestly
filetype plugin indent on

" Configure tabs #tabs4lyfe
set autoindent noexpandtab tabstop=2 shiftwidth=2

" Configure invisibles
set list
set listchars=eol:$,tab:->,trail:~,extends:>,precedes:<
hi SpecialKey ctermfg=DarkGray
hi NonText ctermfg=DarkGray

" Configure line numbers
set number
set numberwidth=4
hi LineNr ctermbg=DarkGray ctermfg=DarkBlue

" Hell yeah syntax highlighting
syntax on

" Configure powerline
set laststatus=2
set rtp+=$HOME/.powerline/powerline/bindings/vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set t_Co=256

" Configure typescript
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Configure js-pretty-template
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces

" Configure syntastic/tsuquyomi
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 

" Configure easy pane movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

