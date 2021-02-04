syntax enable           " enable syntax processing
set number
set termguicolors
" splits go below instead of above
set splitbelow

" enable mouse
set mouse=a
set cursorline          " Enable highlighting of the current line

filetype plugin indent on
set smartindent                         " Makes indenting smart

set iskeyword+=-                      	" treat dash separated words as a word text object"
set cmdheight=2                         " More space for displaying messages
set t_Co=256                            " Support 256 colors
set showtabline=2                       " Always show tabs
" use a python virtualenv for nvim (so coc-python works well)
let g:python3_host_prog = '/home/atte/.config/nvim/neovim3/bin/python3'
let g:python_host_prog = '/home/atte/.config/nvim/neovim2/bin/python'
" Fix coc with node and neovim installed from snap
"specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')
" Make sure you use single quotes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
"Plug 'lervag/vimtex'
"Plug 'jiangmiao/auto-pairs'
"Plug 'SirVer/ultisnips'
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rust-lang/rust.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"Plug 'liuchengxu/vim-which-key'
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

" Fix indent on paste
:nnoremap p p=`]
" Normal paste on ctrl-p
:nnoremap <c-p> p

" Terminal resizing using control+arrows
:nnoremap <silent> <c-Up> :resize -1<CR>
:nnoremap <silent> <c-Down> :resize +1<CR>
:nnoremap <silent> <c-left> :vertical resize -1<CR>
:nnoremap <silent> <c-right> :vertical resize +1<CR>

"keep visual mode after indent
vnoremap > >gv
vnoremap < <gv

" CoC.nvim

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

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
