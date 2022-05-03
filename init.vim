" ~/.config/nvim/init.vim

" colorscheme delek

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent

set number
set relativenumber

set textwidth=100
set colorcolumn=100
set formatoptions-=tc
set signcolumn=yes
highlight ColorColumn ctermbg=Black
highlight SignColumn ctermbg=Black
nnoremap <C-G> :g/./<Space>normal<Space>gqq<CR>

call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
call plug#end()

let g:ale_fixers={'python': ['yapf'], 'json': ['fixjson']}
let g:ale_linters={'python': ['flake8'], 'tex': []}
let g:ale_python_flake8_options = '--max-line-length=100 --ignore=E402,E741,F401,W504,E126,W503,E722,E266,E265,F841,E501'

nnoremap <C-U> :ALEFix<CR>
autocmd FileType markdown nnoremap <C-O> :!pandoc "%" --pdf-engine=xelatex -o "%:r.pdf"<CR>
"autocmd FileType tex nnoremap <C-O> :!xelatex "%:r"; bibtex "%:r"; xelatex "%:r"; xelatex "%:r"<CR>
autocmd FileType tex nnoremap <C-O> :!pdflatex "%:r"; bibtex "%:r"; pdflatex "%:r"; pdflatex "%:r"<CR>
autocmd FileType markdown nnoremap <C-P> :!xdg-open "%:r.pdf" &<CR>
autocmd FileType tex nnoremap <C-P> :!xdg-open "%:r.pdf" &<CR>
autocmd FileType python nnoremap <C-O> :!python "%"<CR>

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_dirhistmax=0
let g:netrw_liststyle=0
let g:netrw_winsize=90
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
set splitright
tnoremap <Esc> <C-\><C-n>
