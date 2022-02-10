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
highlight ColorColumn ctermbg=DarkGray
nnoremap <C-G> :g/./<Space>normal<Space>gqq<CR>

call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
call plug#end()

let g:ale_fixers={'python': ['yapf']}
let g:ale_linters={'python': ['flake8'], 'tex': []}
nnoremap <C-I> :ALEFix<CR>

autocmd FileType markdown nnoremap <C-O> :!pandoc "%" --pdf-engine=xelatex -o "%:r.pdf"<CR>
autocmd FileType tex nnoremap <C-O> :!ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" \| xargs rm -fv; pdflatex "%:r"; bibtex "%:r"; pdflatex "%:r"; pdflatex "%:r"; ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" \| xargs rm -fv<CR>
" autocmd FileType tex nnoremap <C-O> :!ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" -e "\.bib" \| xargs rm -fv; pdflatex "%:r"; biber "%:r"; pdflatex "%:r"; pdflatex "%:r"; ls -1 \| grep "^%:r" \| grep -v -e "\.tex" -e "\.pdf" -e "\.md" -e "\.bib" \| xargs rm -fv<CR>
" autocmd FileType tex nnoremap <C-O> :!latex "%:r"; bibtex "%:r"; latex "%:r"; latex "%:r"<CR>
autocmd FileType markdown nnoremap <C-P> :!xdg-open "%:r.pdf" &<CR>
autocmd FileType tex nnoremap <C-P> :!xdg-open "%:r.pdf" &<CR>

let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_dirhistmax=0
let g:netrw_listtyle=3
let g:netrw_winsize=90
set splitright

let g:vimtex_view_general_viewer='okular'
let g:vimtex_compiler_latexmk={'options': ['-shell-escape']}
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-shell-escape',
    \ ],
    \}
