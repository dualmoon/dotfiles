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

