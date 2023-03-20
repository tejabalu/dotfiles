set nocompatible
syntax on
set number
set hlsearch
set ignorecase
set incsearch
set noswapfile
set relativenumber
set mouse=a
let mapleader = " "
" Disables hls by esc esc, but works for next search. 
nnoremap <silent> <Esc><Esc> :let @/=""<CR>

call plug#begin()
Plug 'wellle/targets.vim'
Plug 'https://github.com/tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'justinmk/vim-sneak'
Plug 'ggandor/leap.nvim'
call plug#end()


set clipboard=unnamedplus
map <Leader> <Plug>(easymotion-prefix)

lua require('leap').add_default_mappings()
:lua vim.keymap.set('n', 's', function () require('leap').leap { target_windows = { vim.fn.win_getid() } } end)
:lua vim.keymap.set('v', 's', function () require('leap').leap { target_windows = { vim.fn.win_getid() } } end)

let g:surround_no_mappings= 1
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
xmap z <Plug>VSurround
nmap yz <Plug>Ysurround
nmap dz <Plug>Dsurround
nmap cz <Plug>Csurround

" remapping to move through wrapped lines. 
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

if has('ide')
	" Remaps specifically for ideavim implementation
	xmap z <Plug>VSurround
	nmap yz  <Plug>YSurround
	nmap dz  <Plug>DSurround
	nmap cz  <Plug>CSurround

	""" Plugins  --------------------------------
	" Plug 'tpope/vim-surround'
	set surround
	set easymotion
	set ReplaceWithRegister
	set commentary
	set sneak

	""" Idea specific settings ------------------
	set ideajoin
	set ideastatusicon=gray

	""" My Mappings -----------------------------
	map <leader>r <Action>(RenameElement)
	map <Leader> <Plug>(easymotion-prefix)
endif

if exists('g:vscode')
	nnoremap gi <Cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>
	nnoremap gI <Cmd>call VSCodeNotify('references-view.findImplementations')<CR>
	nnoremap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
	nnoremap gR <Cmd>call VSCodeNotify('references-view.findReferences')<CR>
	" nnoremap gr <Cmd>call VSCodeNotify('editor.action.')<CR>
endif
