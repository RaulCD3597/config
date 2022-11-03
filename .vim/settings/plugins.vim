" install vim-plug if not installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" install plugins
call plug#begin('~/.vim/plugged')
  " theme
  Plug 'morhetz/gruvbox'

  " syntax
  Plug 'sheerun/vim-polyglot'

  " status bar
  Plug 'itchyny/lightline.vim' 
  Plug 'preservim/nerdtree'
call plug#end()
