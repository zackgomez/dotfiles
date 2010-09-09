if has('syntax') && (&t_Co > 2)
syntax on
endif

set showmode
set showcmd
set mouse=a
set nowrap
set incsearch
set backspace=indent,eol,start

"Tab and indentation options
set shiftwidth=4
set shiftround
set expandtab
set autoindent
set smarttab
" Fix public: and private: in C++
set cino+=g0
" Fix case labels
set cino+=:-
" Fix parenthesis
set cino+=(0

" Remember marks, for 100 files and no global marks
set viminfo='100,f0

filetype plugin indent on
set nocp
" Commands for various filetypes
autocmd FileType c,cpp,slang set cindent
autocmd FileType make set noexpandtab
autocmd FileType c set formatoptions+=ro
autocmd FileType python set smartindent
autocmd FileType c,cpp source /home/zack/.vim/syntax/opengl.vim

"For glsl syntax highlighting
au BufNewFile,BufRead *.frag,*vert,*.fp,*.vp,*.glsl setf glsl
"For gas asm
au BufNewFile,BufRead *.s,*.S,*.asm setf gas

"miniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplModSelTarget = 1

" Taglist options
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <silent> <F8> :TlistToggle<CR>

" Omnicomplete options
set tags+=~/.vim/cpp-tags
set tags+=~/.vim/wxwidgetstags
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
imap <C-space> <C-x><C-o>

" Doxygen Toolkit options
let g:DoxygenToolkit_briefTag_pre=""
