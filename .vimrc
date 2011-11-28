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
set tabstop=4
set shiftround
set expandtab
set autoindent
set smarttab

"Color column options
highlight ColorColumn ctermbg=8
"set cc=80
"set number

" Fix public: and private: in C++
set cino+=g0
" Fix case labels
set cino+=:-
" Fix parenthesis
"set cino+=(0

" Remember marks, for 100 files and no global marks
set viminfo='100,f0

filetype plugin indent on
set nocp
" Commands for various filetypes
autocmd FileType c,cpp,slang set cindent
autocmd FileType make set noexpandtab
autocmd FileType c set formatoptions+=ro
autocmd FileType python set autoindent
autocmd FileType html set wrap
autocmd FileType haskell set sw=2

"For glsl syntax highlighting
au BufNewFile,BufRead *.frag,*vert,*.fp,*.vp,*.glsl setf glsl
"For gas asm
au BufNewFile,BufRead *.s,*.S,*.asm setf gas

" Taglist options
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <silent> <F8> :TlistToggle<CR>

" Autocomplete options
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
let g:clang_use_library = 1
"" Use CTRL-Space for Omnifunc completions, if omnifunc is supported
if has('eval') || has('insert_expand')
      inoremap <Nul> <C-x><C-o>
  endif

" Doxygen Toolkit options
let g:DoxygenToolkit_briefTag_pre=""

" VimLatex options
set grepprg=grep\ -nh\ $*
let g:tex_flavor = "latex"
let g:Tex_DefaultTargetFormat = "pdf"
let g:Imap_UsePlaceHolders = 0
let g:Tex_Folding = 0
