packadd vim-jetpack
call jetpack#begin()
call jetpack#add('tani/vim-jetpack', {'opt': 1})
call jetpack#add('https://github.com/dense-analysis/ale')
call jetpack#add('junegunn/fzf.vim')
call jetpack#add('junegunn/fzf', { 'do': {-> fzf#install()} })
call jetpack#add('neoclide/coc.nvim', { 'branch': 'release' })
call jetpack#add('neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' })
call jetpack#add('tomasr/molokai')
call jetpack#add('itchyny/lightline.vim')
call jetpack#add('joshdick/onedark.vim')
call jetpack#add('Yggdroot/indentLine')


call jetpack#end()

set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4
set incsearch
set smartcase
set hlsearch
set whichwrap=b,s,h,l,<,>,[,],~
set number
set cursorline
set wildmenu
set history=500
set backspace=indent,eol,start
set completeopt=menuone,noinsert
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

colorscheme elflord
syntax enable

set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

"----------------------------------------------------------
" インデントの可視化
call jetpack#add('Yggdroot/indentLine')
"----------------------------------------------------------
filetype plugin indent on
colorscheme onedark