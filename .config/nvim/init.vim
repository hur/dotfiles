syntax enable           " enable syntax processing
set number
set termguicolors
" splits go below instead of above
set splitbelow

"filetype plugin for filetype-based vim configs
filetype plugin indent on
"specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'lervag/vimtex'
Plug 'jiangmiao/auto-pairs'
"Plug 'SirVer/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rust-lang/rust.vim'
call plug#end()

" Use system clipboard (+ or Ctrl^C clipboard)
set clipboard+=unnamedplus

" When deleting, send the stuff to the black hole register instead of
" clipboard - for cutting use x e.g. Vx, Viwx
nnoremap d "_d
vnoremap d "_d

" vim stuff
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" ultisnips config
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let $HOME = expand('~')
let g:UltiSnipsSnippetsDir = $HOME."~/.vim/mysnippets"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/mysnippets']

"colorscheme gruvbox
colorscheme gruvbox
" :Tt adds a small terminal split
command Tt split | resize 10 | term

" Exit insert mode in terminal using esc
tnoremap <Esc> <C-\><C-n>
" enter insert mode automatically when entering terminal
autocmd BufWinEnter,WinEnter term://* startinsert

" Terminal resizing using control+arrows
:nnoremap <silent> <c-Up> :resize -1<CR>
:nnoremap <silent> <c-Down> :resize +1<CR>
:nnoremap <silent> <c-left> :vertical resize -1<CR>
:nnoremap <silent> <c-right> :vertical resize +1<CR>


" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
