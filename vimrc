syntax on
set nocompatible
set autoindent
set wildmode=list:longest
set noinsertmode
set cmdheight=1
set nowrap       " dont wrap lines
set linebreak    " wrap lines at convenient points
set history=1000 " store lots of :cmdline history

set number
colorscheme railscasts
set background=dark

set title

set showcmd     " show incomplete cmds down the bottom

set incsearch   " find the next match as we type the search
set ignorecase  " Ignore case when searching
set hlsearch    " hilight searches by default

"statusline setup
set laststatus=2 
set statusline =[%n]
set statusline+=:\%{hostname()}@
set statusline+=%<%F
set statusline+=%m 
set statusline+=%r 
set statusline+=%w 
set statusline+=[%{&fileformat}]
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y
set statusline+=%=
set statusline+=[ASCII=%B,HEX=%c]
set statusline+=[L=%l/%L]
set statusline+=[%p%%]

set smartindent
set smartcase
set showmatch
set backspace=indent,eol,start
set nolist
set backspace=2
set pastetoggle=<F12>

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT

filetype plugin on
filetype indent on

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set t_Co=256
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

"display tabs and trailing spaces
set list
set listchars=tab:\ \ ,extends:>,precedes:<

set formatoptions-=o "dont continue comments when pushing o/O

"jump to last cursor position when opening a file
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
set viminfo^=% " Remember info about open buffers on close

:map <C-f> :execute 'NERDTreeToggle ' . getcwd()<CR>
:map <C-t> :FufFile<CR>
:map <C-b> :FufBuffer<CR>
" :map <C-t> :FuzzyFinderTextMate<CR>
" :map <C-b> :FuzzyFinderBuffer<CR>
" :map <C-l> :FuzzyFinderMruFile<CR>
" :map <C-p> :FuzzyFinderMruCmd<CR>


:map <c-_> :TComment

noremap <S-u> <S-j>
noremap <S-j> <Pagedown>
noremap <S-k> <Pageup>

" Indent Guide settings
set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
":IndentGuidesEnable

" Zencoding mapping
let g:user_zen_expandabbr_key = '<c-y>'
