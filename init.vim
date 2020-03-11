" Place this file in ~/.config/nvim/
" Specify a directory for plugins
" - For Neovim: stdparth('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


" Semantic Language Support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntactic Language Support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'

" Plug 'junegunn/fzf'



" Initialize plugin system
call plug#end()

if has('nvim')
	set guicursor=
end

" racer + rust
let g:rustfmt_autosave = 1
"let g:rustfmt_emit_fiels = 1
let g:rustfmt_fail_silently = 0

" Completion
" Better display for messages
set cmdheight=2
set updatetime=300

" =============================================================================
" # Keyboard shortcuts
" =============================================================================
" ; as :
nnoremap ; :

" Ctrl+c and Ctrl+j as Esc
" Ctrl-j is a little awkward unfortunately:
" https://github.com/neovim/neovim/issues/5916
" So we also map Ctrl+k
inoremap <C-j> <Esc>

nnoremap <C-k> <Esc>
inoremap <C-k> <Esc>
vnoremap <C-k> <Esc>
snoremap <C-k> <Esc>
xnoremap <C-k> <Esc>
cnoremap <C-k> <Esc>
onoremap <C-k> <Esc>
lnoremap <C-k> <Esc>
tnoremap <C-k> <Esc>

nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
vnoremap <C-c> <Esc>
snoremap <C-c> <Esc>
xnoremap <C-c> <Esc>
cnoremap <C-c> <Esc>
onoremap <C-c> <Esc>
lnoremap <C-c> <Esc>
tnoremap <C-c> <Esc>

" Ctrl+h to stop searching
vnoremap <C-h> :nohlsearch<cr>
nnoremap <C-h> :nohlsearch<cr>

" Suspend with Ctrl+f
inoremap <C-f> :sus<cr>
vnoremap <C-f> :sus<cr>
nnoremap <C-f> :sus<cr>

" Jump to start and end of line using the home row keys
map H ^
map L $

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


" Left and right can switch buffers
nnoremap <left> :bp<CR>
nnoremap <right> :bn<CR>
