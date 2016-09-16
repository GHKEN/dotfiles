"vimはshellがPOSIX互換であることを期待しているらしい
set shell=/bin/sh

"黒背景
set background=dark

"エンコードの設定
set encoding=utf-8
set fencs=utf-8,euc-jp,sjis

"256color
set t_Co=256

"行番号を表示
set number

"左右のカーソル移動で行間移動可能にする。
set whichwrap=b,s,h,l,<,>,[,],~

"シンタックスハイライト
syntax on

"タブはスペース4つぶん
set tabstop=4

"オートインデントの幅
set shiftwidth=4

"タブをスペースに
set expandtab

"いい感じにインデント
set cindent

"小文字で検索した時は大文字小文字を無視
set ignorecase
set smartcase

"コマンドラインの補完で大文字小文字を無視
set wildignorecase

"ファイル末尾まで検索したら先頭に戻る
set wrapscan

"下から二行目にステータスバーを表示
set laststatus=2

"不可視文字を表示
set list
set listchars=tab:»-,trail:_,eol:↲,nbsp:_

"インサートモードでbackspaceが使えるように
set backspace=start,eol,indent

"ターミナルのデフォルト背景色を無効に
set t_ut=

"幅が曖昧な文字は全角で
set ambiwidth=double

"閉じカッコ入力時に対応するカッコを強調表示
set showmatch

if &compatible
    set nocompatible
endif

set runtimepath+=~/.vim/dein
let s:dein_dir = expand('~/.cache/dein')

call dein#begin(s:dein_dir)
call dein#add('Shougo/dein.vim')
call dein#add('Lokaltog/vim-powerline')
call dein#add('Shougo/neocomplcache')
call dein#add('vim-scripts/gtags.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('w0ng/vim-hybrid')
call dein#end()

if dein#check_install()
    call dein#install()
endif
filetype plugin indent on

colorscheme hybrid

"neocomplecacheを自動起動
let g:neocomplcache_enable_at_startup = 1
"候補が一つでも補完ウィンドウを表示
set completeopt=menuone
"大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_smart_case = 1
"php用の辞書ファイルを読み込む
let g:neocomplcache_dictionary_filetype_lists = {'php' : '.vim/dict/php.dict'}
"タブで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"

"起動メッセージを表示しない
set shortmess+=I

"コピペ用に行番号と改行、タブを非表示
function Cpp()
    set nonumber
    set nolist
endfunction
command! Cpp call Cpp()
