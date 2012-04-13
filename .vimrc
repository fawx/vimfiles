au! BufWritePost .vimrc source %                        " automatically reload when editing .vimrc




" 4 spaces for tabs and automatically inherit previous line's indentation.
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

set number                                              " show line numbers
set title                                               " term title
set nowrap                                              " no line wrap
set showmatch                                           " show matching braces
set wildmenu                                            " show tab-completion in command mode
set wildmode=longest:full                               " modes for wildmenu
set ignorecase                                          " ignore case in searches
set smartcase                                           " .. unless a capital is present
set scrolloff=5                                         " keep 5 extra lines around the cursor


" syntax and filetype settings
syntax on                                               " syntax coloring
set synmaxcol=1024                                      " limit syntax color to 1024 chars per line
filetype plugin indent on                               " enable file-based plugins and indents
" au BufRead,BufNewFile *.scss set filetype=scss
" au BufRead,BufNewFile *.xsl set filetype=xsl


" ignore some temp and swap files
set wildignore+=*/.sass-cache/*,*.swp,*.swo


" fold settings
set foldmethod=indent                                   " fold according to indentation
set nofoldenable                                        " folds are automatically open
set foldnestmax=10                                      " max of 10 nested folds
set foldlevel=1                                         " only fold one level at a time


" key mappings
"       ctrl-e/y shift page 5 lines at a time
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
inoremap <LeftMouse> <nop>
inoremap <2-LeftMouse> <nop>
nnoremap <LeftMouse> <nop>
nnoremap <2-LeftMouse> <nop>


" color settings
set t_Co=256                                            " 256 colors
colorscheme twilight256                                 " use twilight for colorscheme
set cursorline                                          " give current line and column a color
set cursorcolumn


" colors
hi LineNr ctermfg=darkgrey
hi CursorLine cterm=NONE ctermbg=236
hi CursorColumn cterm=NONE ctermbg=236
hi FoldColumn ctermfg=67 ctermbg=236
hi Folded ctermfg=67  ctermbg=236
hi TabLineFill ctermfg=black ctermbg=black
hi TabLine ctermfg=100 ctermbg=black
hi TabLineSel ctermfg=226 ctermbg=black


" mvim/gvim options
if has("gui_running")
    " gui colors
    hi Normal guifg=gray guibg=Grey15
    hi CursorLine cterm=NONE guibg=Grey23
    hi CursorColumn cterm=NONE guibg=Grey23
    hi FoldColumn guifg=SteelBlue1 guibg=NONE
    hi Folded guifg=SteelBlue1 guibg=NONE
    hi TabLineFill guifg=Grey20 guibg=Grey20
    hi TabLine guifg=bisque4 guibg=Grey20
    hi TabLineSel guifg=bisque guibg=Grey20

    set transparency=5                                  " mvim transparency
    set lines=52 columns=130                            " window size for mvim/gvim
    set guioptions=                                     " turn off all gui chrome
    if has("gui_macvim")
        set guifont=Monaco:h11                          " font for osx
    endif
    if has("gui_gtk2")                                  " font for gnome
        set guifont=Monaco\ 8
    endif
endif

" macros
let @a=':%s/’/\&rsquo;/g:%s/“/\&ldquo;/g:%s/”/\&rdquo;/g'


" ctrlp settings
let g:ctrlp_working_path_mode = 0                       " do not manage working directory
