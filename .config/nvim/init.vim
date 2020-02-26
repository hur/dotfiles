syntax enable           " enable syntax processing
set number              " show line numbers
set termguicolors
" splits go below instead of above
set splitbelow

"filetype plugin for filetype-based vim configs
filetype plugin on

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
Plug 'SirVer/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
call plug#end()

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

" air-line
let g:airline_powerline_fonts = 1

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


