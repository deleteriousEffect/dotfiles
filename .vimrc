execute pathogen#infect()

filetype plugin indent on

" Numbers on by default
set number

" makes the colors all pretty
colorscheme jellybeans

" options for jslint
let g:syntastic_jslint_checkers=['jslint']
" options for rubocop
let g:syntastic_ruby_checkers=['rubocop']
" general options for syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {}

" size of a hard tabstop
 set tabstop=4

" always uses spaces instead of tab characters
 set expandtab

" size of an "indent"
 set shiftwidth=4

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
" Indenting a line with >> or << will indent or un-indent by 4
 " set shiftwidth=4
" Pressing tab in insert mode will use 4 spaces
 set softtabstop=4
" Use spaces instead of tabs
 " set expandtab
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
" Enable syntax highlighting
 syntax enable
" Tell vim that your terminal supports 256 colors
set t_Co=256
" Toggle paste mode with F2
 " set pastetoggle=<F2>
" Use ; instead of : to enter commands, saves a lot of keystrokes in the long run
 nnoremap ; :

 "nerdtree stuff
 "
 "start nerdtree when vim starts
 autocmd vimenter * NERDTree

 "ctrl+n starts nerdtree
 map <C-n> :NERDTreeToggle<CR>
