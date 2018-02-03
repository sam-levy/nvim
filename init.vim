set nocompatible

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim " path to dein.vim

call dein#begin(expand('~/.config/nvim/dein')) " plugins' root path
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {
    \ 'build': {
    \     'windows': 'tools\\update-dll-mingw',
    \     'cygwin': 'make -f make_cygwin.mak',
    \     'mac': 'make -f make_mac.mak',
    \     'linux': 'make',
    \     'unix': 'gmake',
    \    },
    \ })
call dein#add('Shougo/unite.vim')


" Theme
colorscheme one
set background=dark
let g:airline_theme = 'onedark'
let g:one_allow_italics = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
" END Theme


" Plugins go here!
set runtimepath^=~/.config/nvim/dein/bundle/ctrlp.vim
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

call dein#end()
" END Plugin list


" Basic configs
:set number
:set cursorline
" END basic configs


