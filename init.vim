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
highlight ColorColumn ctermbg=DarkGray
nnoremap <C-G> :g/./<Space>normal<Space>gqq<CR>

call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
call plug#end()

let g:ale_fixers={'python': ['yapf']}
let g:ale_linters={'python': ['flake8'], 'tex': []}
let g:ale_python_flake8_options = '--max-line-length=100 --ignore=E402,E741,F401,W504,F841,E126,W503,E722,E266,E265'
nnoremap <C-I> :ALEFix<CR>

autocmd FileType markdown nnoremap <C-O> :!pandoc "%" --pdf-engine=xelatex -o "%:r.pdf"<CR>
autocmd FileType tex nnoremap <C-O> :!ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" \| xargs rm -fv; pdflatex "%:r"; bibtex "%:r"; pdflatex "%:r"; pdflatex "%:r"; ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" \| xargs rm -fv<CR>
" autocmd FileType tex nnoremap <C-O> :!ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" -e "\.bib" \| xargs rm -fv; pdflatex "%:r"; biber "%:r"; pdflatex "%:r"; pdflatex "%:r"; ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" -e "\.bib" \| xargs rm -fv<CR>
" autocmd FileType tex nnoremap <C-O> :!latex "%:r"; bibtex "%:r"; latex "%:r"; latex "%:r"<CR>
autocmd FileType markdown nnoremap <C-P> :!xdg-open "%:r.pdf" &<CR>
autocmd FileType tex nnoremap <C-P> :!xdg-open "%:r.pdf" &<CR>

let g:netrw_banner=0
let g:netrw_browse_split=3
let g:netrw_dirhistmax=0
let g:netrw_liststyle=0
let g:netrw_winsize=90
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
set splitright
