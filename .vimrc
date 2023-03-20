" vimrc for visual studio 
set nocompatible
syntax on
set number
set hlsearch
set ignorecase
set incsearch
set noswapfile
set mouse=a
let mapleader = " "

nnoremap <silent> <Esc><Esc> :let @/=""<CR>

" comments for visual studio
nmap gc :vsc Edit.ToggleLineComment<CR>
vmap gc :vsc Edit.ToggleLineComment<CR>

" to be used in association with peasymotion plugin in visual studio, for an
" alternative to sneakvim
nmap s :vsc Tools.InvokePeasyMotionTwoCharJump<CR>
vmap s :vsc Tools.InvokePeasyMotionTwoCharJump<CR>


set clipboard=unnamed

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Surround simulating bindings
nnoremap z) ciw(<C-r>")<Esc>
nnoremap z] ciw[<C-r>"]<Esc>
nnoremap z} ciw{<C-r>"}<Esc>
nnoremap z> ciw<lt><C-r>"><Esc>
nnoremap z" ciw"<C-r>""<Esc>
nnoremap z' ciw'<C-r>"'<Esc>
nnoremap z* ciw*<C-r>"*<Esc>
nnoremap zw) ciW(<C-r>")<Esc>
nnoremap zw] ciW[<C-r>"]<Esc>
nnoremap zw} ciW{<C-r>"}<Esc>
nnoremap zw> ciW<lt><C-r>"><Esc>
nnoremap zw" ciW"<C-r>""<Esc>
nnoremap zw' ciW'<C-r>"'<Esc>

" Surround delete bindings
nnoremap dz) vi(dv%p
nnoremap dz] vi[dv%p
nnoremap dz} vi{dv%p
nnoremap dz> vi<dv%p
nnoremap dz" vi"dv%p
nnoremap dz' vi'dv%p

" Surround change bindings
nnoremap cz"' vi"oh<Esc>msvi"l<Esc>cl'<Esc>`scl'<del><Esc>
nnoremap cz'" vi'oh<Esc>msvi'l<Esc>cl"<Esc>`scl"<Esc>
nnoremap cz>) vi>oh<Esc>msvi>l<Esc>cl)<Esc>`scl(<Esc>
nnoremap cz)> vi)oh<Esc>msvi)l<Esc>cl><Esc>`scl<<Esc>
nnoremap cz}) vi}oh<Esc>msvi}l<Esc>cl)<Esc>`scl(<Esc>
nnoremap cz)} vi)oh<Esc>msvi)l<Esc>cl}<Esc>`scl{<Esc>
nnoremap cz>} vi>oh<Esc>msvi>l<Esc>cl}<Esc>`scl{<Esc>
nnoremap cz}> vi}oh<Esc>msvi}l<Esc>cl><Esc>`scl<<Esc>

" Surround visual selected text
vnoremap z" c"<C-r>""<Esc>
vnoremap z' c"<C-r>"'<Esc>
vnoremap z) c(<C-r>")<Esc>
vnoremap z] c[<C-r>"]<Esc>
vnoremap z} c{<C-r>"}<Esc>
vnoremap z> c<lt><C-r>"><Esc>
vnoremap z* c/*<C-r>"*/<Esc>

" Refactor rename
map gi :vsc Edit.GoToImplementation<CR>
map gI :vsc ReSharper.ReSharper_PeekImplementations<CR>
map gr :vsc Edit.FindAllReferences<CR>
map gD :vsc Edit.PeekDefinition<CR>

" break out of the tyranny of text! Navigate by method
nnoremap m :vsc Edit.NextMethod<cr>
nnoremap M :vsc Edit.PreviousMethod<cr>
