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

"NeoBundle
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

"NeoBundle自体をvimで管理する場合はNeoBundleFetchを使うらしい
NeoBundleFetch 'Shougo/neobundle.vim'

"カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'

colorscheme hybrid

"直感的なインターフェースを提供してくれるらしい
NeoBundle 'Shougo/unite.vim'

"ファイラー
NeoBundle 'Shougo/vimfiler'

"カラースキーム一覧表示
NeoBundle 'ujihisa/unite-colorscheme'

"カラーコードをハイライト
NeoBundle 'lilydjwg/colorizer'

"agをvimでも使えるように"
NeoBundle 'rking/ag.vim'

"git
NeoBundle 'tpope/vim-fugitive'

"ステータスバーをおしゃれに
NeoBundle 'Lokaltog/vim-powerline'

"coffee
NeoBundle 'kchmck/vim-coffee-script'

"Hack
NeoBundle 'hhvm/vim-hack'

"Go
NeoBundle 'fatih/vim-go'

"cjsx
NeoBundle 'mtscout6/vim-cjsx'

"gtags
NeoBundle 'vim-scripts/gtags.vim'

"入力補完
NeoBundle 'Shougo/neocomplcache'
"neocomplecacheを自動起動
let g:neocomplcache_enable_at_startup = 1
"候補が一つでも補完ウィンドウを表示
set completeopt=menuone
"大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_smart_case = 1
"タブで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"
"php用の辞書ファイルを読み込む
set dictionary=".vim/dict/php.dict"

filetype plugin indent on
filetype indent on

"起動メッセージを表示しない
set shortmess+=I

"コピペ用に行番号と改行、タブを非表示
function Cpp()
    set nonumber
    set nolist
endfunction
command! Cpp call Cpp()
