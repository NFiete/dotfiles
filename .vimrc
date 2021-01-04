"Misc stuff
let mapleader = " "
let g:Powerline_symbols = 'fancy'
syntax on
set spell
set autoindent
set shiftwidth=4
set tabstop=4
set cinoptions+=j1

" Auto Complete
	set wildmode=longest,list,full
"Other Escape
map <C-l> <Esc>
inoremap <C-l> <Esc>



set tw=74
set number relativenumber
filetype plugin on

"Plug ins
call plug#begin('~/.vim/plugged')
Plug 'jalvesaq/Nvim-R'
Plug 'junegunn/goyo.vim'
Plug 'gaalcaras/ncm-R'
call plug#end()


" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e



" Ensure files are read as what I want:
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	autocmd BufRead,BufNewFile *.tex set filetype=tex
vnoremap <C-c> "+y
map <C-p> "+P
" Comiler
map <leader>c :w! \| !~/.scripts/compiler.sh <c-r>%<CR><CR>
" View
" Open corresponding .pdf/.html or preview
	map <leader>p :~/.scripts/opout.sh <c-r>%<CR><CR>

map <Space><Tab> <Esc>/<++><Enter>"_c4l

map <F1> <Esc>
imap <F1> <Esc>
" Latex commands
"autocmd FileType tex inoremap ,bgn  \begin{<++>}<Enter><Enter><++><Enter><Enter>\end{<++>}<Enter><Enter><++><Esc>7kf}
"map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
"map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA


autocmd FileType tex inoremap ,bgn <Esc>YpkI\begin{<ESC>A}<ESC>jI<Enter>\end{<ESC>A}<esc>kA

autocmd FileType tex inoremap ,prb \begin{prb}<Enter><Enter><++><Enter><Enter>\end{prb}<Enter>\begin{proof}<Enter><++><Enter>\end{proof}<Esc>7kf}i
autocmd FileType tex inoremap ,22 \begin{pmatrix}<Enter><++><Space>&<Space><++>\\<Enter><++><Space>&<Space><++><Enter>\end{pmatrix}<Esc>3k
autocmd FileType tex inoremap ,33 \begin{pmatrix}<Enter><++><Space>&<Space><++><Space>&<Space><++>\\<Enter><++><Space>&<Space><++><Space>&<Space><++>\\<Enter><++><Space>&<Space><++><Space>&<Space><++><Enter>\end{pmatrix}<Esc>4k
autocmd FileType tex inoremap ,vc \vec{}<++><Esc>4hi

autocmd FileType tex inoremap ,fm \begin{frame}<Enter>\frametitle{<++>}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>7kf}i
autocmd Filetype tex inoremap `l \lambda
autocmd Filetype tex inoremap `L \Lambda
autocmd FileType tex inoremap ,bb \mathbb{}<++><Esc>4hi
autocmd FileType tex inoremap ,rbr \{\}<++><Esc>5hi
autocmd FileType tex inoremap `p \phi
autocmd FileType tex inoremap `vp \varphi
autocmd FileType tex inoremap `P \Phi
autocmd FileType tex inoremap `s \sigma
autocmd FileType tex inoremap `j \theta
autocmd FileType tex inoremap `J \Theta
autocmd FileType tex inoremap `t \tau
autocmd FileType tex inoremap `T \Tau
autocmd FileType tex inoremap `a \alpha
autocmd FileType tex inoremap `A \Alpha
autocmd FileType tex inoremap `b \beta
autocmd FileType tex inoremap `B \Beta
autocmd FileType tex inoremap ,it <Enter>\item
autocmd FileType tex inoremap ,ea \begin{enumerate}[label=(\alph*)]<Enter><++><Enter>\end{enumerate}<Enter><Enter><++><Esc>4kf]i
autocmd FileType tex inoremap ,ll \rightarrow
autocmd FileType tex inoremap `e \epsilon
autocmd FileType tex inoremap `O \Omega
autocmd FileType tex inoremap `o \omega
autocmd FileType tex inoremap `R \Rho
autocmd FileType tex inoremap `r \rho
autocmd FileType tex inoremap `g \gamma
autocmd FileType tex inoremap `G \Gamma
autocmd FileType tex inoremap `d \delta
autocmd FileType tex inoremap `D \Delta
autocmd FileType tex inoremap `z \zeta
autocmd FileType tex inoremap `Z \Zeta
autocmd FileType tex inoremap `h \eta
autocmd FileType tex inoremap `H \Eta
autocmd FileType tex inoremap ,pd \frac{\partial <++>}{\partial <++>} <++><Esc>40h
autocmd FileType tex inoremap ,fr \frac{}{<++>}<++><Esc>10hi
autocmd FileType tex inoremap ,dfr \dfrac{}{<++>}<++><Esc>10hi
autocmd FileType tex inoremap ,lim \lim_{<++> \rightarrow <++>}<++><Esc>Tl
autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>4hi
autocmd FileType tex inoremap ,ov \overline{}<++><Esc>4hi
autocmd FileType tex inoremap ,un \underline{}<++><Esc>4hi
autocmd FileType tex inoremap ,fn \footnote{}<++><Esc>4hi
autocmd FileType tex inoremap ,lm \limits_{}^{<++>}<++><Esc>T{3hi
autocmd FileType tex inoremap ,in \infty
autocmd FileType tex inoremap ,lr \left(\right)<++><Esc>10hi
autocmd FileType tex inoremap ,im \(\)<++><Esc>5hi
autocmd FileType tex inoremap ,dm \[\]<++><Esc>5hi

"R
"
autocmd FileType r map <leader>l \lj

"Java
"
"autoload/javacomplete.vim.

let java_comment_strings=1
let java_highlight_java_lang_ids=1
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150
autocmd FileType java inoremap ,main public static void main(String[] args){<Enter><Enter>}<Esc>v2k==o

autocmd FileType java inoremap " ""<left>
autocmd FileType java inoremap ' ''<left>
autocmd FileType java inoremap ( ()<left>
autocmd FileType java inoremap [ []<left>
autocmd FileType java inoremap { {}<left>
