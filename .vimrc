set number
set relativenumber
set smartcase
syntax on
set mouse=a
set noswapfile

"Custom alliasses
command Spellen set spell spelllang=en_us
command Spellnl set spell spelllang=nl_be

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set clipboard=unnamedplus
noremap <C-c> "+y

highlight comment ctermfg=cyan

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Syntastic                                            ""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax checking with syntastic
" To install syntastic, run the following command
" > yay -S vim-syntastic
" Syntastic recommended settings:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" File options                                         ""

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

" Enable indentation matching for =>'s
filetype plugin indent on

