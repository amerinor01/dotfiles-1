"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/a21v/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/a21v/.local/share/dein')
  call dein#begin('/home/a21v/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/a21v/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('kassio/neoterm')
  call dein#add('vim-airline/vim-airline') 
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-surround')
  call dein#add('ervandew/supertab')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('morhetz/gruvbox')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('tpope/vim-fugitive')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('tpope/vim-rails')
  call dein#add('tpope/vim-bundler')
  call dein#add('tpope/vim-rake')
  call dein#add('mattn/emmet-vim')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('vim-javascript')
  call dein#add('tpope/vim-bundler')
  call dein#add('tpope/vim-endwise')
  call dein#add('terryma/vim-multiple-cursors')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('alvan/vim-closetag')
  call dein#add('godlygeek/tabular')
  call dein#add('eagletmt/ghcmod-vim')
  call dein#add('eagletmt/neco-ghc')
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
  call dein#add('Shougo/vimshell')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('myusuf3/numbers.vim')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('junegunn/limelight.vim')
  call dein#add('majutsushi/tagbar')
  call dein#add('racer-rust/vim-racer')
  call dein#add('rust-lang/rust.vim')
  call dein#add('mattn/gist-vim')
  call dein#add('mattn/webapi-vim')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('ternjs/tern_for_vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

let g:gruvbox_invert_selection=0 
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox 

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_alt_sep = '|'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'

" Syntastic
let g:syntastic_error_symbol = '●'
let g:syntastic_style_error_symbol = '●'
let g:syntastic_warning_symbol = '●'
let g:syntastic_style_warning_symbol = '●'

set cursorline
let g:deoplete#enable_at_startup = 1
set mouse=a
let g:SuperTabDefaultCompletionType = "<c-n>"

hi VertSplit ctermfg=239
" hi SignColumn ctermbg=235

" Start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬

set splitbelow
set splitright

set clipboard=unnamed

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb"

let g:necoghc_enable_detailed_browse = 1

" Keybindings
let mapleader = ","

map <silent> <Leader>n :NERDTreeToggle<CR>
map <Leader>s :SyntasticToggleMode<CR>

map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" haskell align
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

map <silent> <Leader>p :Denite file_rec<CR>
map <silent> <Leader>b :Denite buffer<CR>

" Denite mappings
call denite#custom#map(
    \ 'insert',
    \ '<C-j>',
    \ '<denite:move_to_next_line>',
    \ 'noremap'
    \)
call denite#custom#map(
    \ 'insert',
    \ '<C-k>',
    \ '<denite:move_to_previous_line>',
    \ 'noremap'
    \)

autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab 

let g:gitgutter_sign_column_always = 1
set number

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

map <silent> <Leader>l :Limelight!!<CR>

nmap <silent> <Leader>t :TagbarToggle<CR>

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1  
let python_highlight_all = 1

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }


let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
