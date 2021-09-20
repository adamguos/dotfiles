" ~/.config/nvim/init.vim

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set number
set relativenumber

set textwidth=100
set colorcolumn=100
nnoremap <C-G> :g/./<Space>normal<Space>gqq<CR>

colorscheme delek

call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
call plug#end()

let g:ale_fixers={'python': ['yapf']}
let g:ale_linters={'python': ['flake8']}
nnoremap <C-I> :ALEFix<CR>

nnoremap <C-O> :!pandoc "%" --pdf-engine=xelatex -o "%:r.pdf"<CR>

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_dirhistmax=0
let g:netrw_listtyle=3
let g:netrw_winsize=90
set splitright

let g:vimtex_view_general_viewer='zathura'
let g:vimtex_compiler_latexmk={'options': ['-shell-escape']}
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-shell-escape',
    \ ],
    \}
