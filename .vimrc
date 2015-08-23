execute pathogen#infect()

filetype plugin indent on

" Numbers on by default
set number

" Enable syntax highlighting
 syntax enable

" makes the colors all pretty
colorscheme dracula

" options for jslint
let g:syntastic_jslint_checkers=['jslint']
" options for rubocop
let g:syntastic_ruby_checkers=['rubocop']
" options for html
let g:syntastic_html_checkers=['validator']
" options for sass
let g:syntastic_sass_checkers=['sass']


" general options for syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {}
" path to extra_conf for c family languages
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" size of a hard tabstop
 set tabstop=2
 
" Pressing tab in insert mode will use 4 spaces
 set softtabstop=2

" always uses spaces instead of tab characters
 set expandtab

" size of an indent
 set shiftwidth=2

" Set Javascript tabs to 4 spaces
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

" Allows you to have multiple buffers open
 set hidden
" Lines of code will not wrap to the next line
 set nowrap
 " Make backspace behave like other editors
 set backspace=indent,eol,start
 " Automatically indent on new lines
 set autoindent
" Copy the indentation of the previous line if auto indent doesn't know what to do
 set copyindent
" Highlight matching braces/tags
 set showmatch
" Ignore case when searching
 set ignorecase
" ...unless there's a capital letter in the query
 set smartcase
" Indent to correct location with tab
 set smarttab
" Highlight search matches
 set hlsearch
" Search while you enter the query, not after
 set incsearch
" More undos
 set undolevels=1000
" Vim can set the title of the terminal window
 set title
" Use a visual indicator instead of a beep
 set visualbell
" Or just turn error bells off with this
 " set noerrorbells
" Tell vim that your terminal supports 256 colors
set t_Co=256
" Toggle paste mode with F2
set pastetoggle=<F2>
" Use ; instead of : to enter commands, saves a lot of keystrokes in the long run
 nnoremap ; :
" Save all buffers on focus lost, ignore unnamed buffer warnings
:au FocusLost * silent! wa

 "nerdtree stuff
 "
 "start nerdtree when vim starts
 autocmd vimenter * NERDTree
 " Use normal arrsows
 "let g:NERDTreeDirArrows=0
 
 "ctrl+n starts nerdtree
 map <C-n> :NERDTreeToggle<CR>

 " Macros for C
" Setup main function
autocmd Filetype c let @m = 'i#include <stdio.h>int main(int argc, char *argv[]){return 0;}'
