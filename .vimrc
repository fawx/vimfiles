" bundles
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-haml'
Bundle 'JulesWang/css.vim'
Bundle 'vim-scripts/twilight256.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"


set rtp+=/Users/fox/Library/python/2.7/lib/python/site-packages/powerline/bindings/vim


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
set scrolloff=10                                        " keep 10 extra lines around the cursor
set sidescrolloff=10


" syntax and filetype settings
syntax on                                               " syntax coloring
set synmaxcol=1024                                      " limit syntax color to 1024 chars per line
filetype plugin indent on                               " enable file-based plugins and indents
autocmd BufNewFile,BufRead *.scss set filetype=scss
set directory=/tmp


" ignore some temp and swap files
set wildignore+=*/.sass-cache/*,*.swp,*.swo,*.pyc,.DS_Store,*.jpeg,*.jpg,*.gif,*.png


" html syntax sucks so use xml
au BufRead,BufNewFile *.html set filetype=xml


" fold settings
set foldmethod=indent                                   " fold according to indentation
set nofoldenable                                        " folds are automatically open
set foldnestmax=10                                      " max of 10 nested folds
set foldlevel=1                                         " only fold one level at a time


" key mappings
"       ctrl-e/y shift page 5 lines at a time
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
nnoremap <D-Right> :tabn
nnoremap <D-Left> :tabp
" inoremap <LeftMouse> <nop>
" inoremap <2-LeftMouse> <nop>
" nnoremap <LeftMouse> <nop>
" nnoremap <2-LeftMouse> <nop>
" clean u p whitespace
nnoremap <silent> <F5> :set shiftwidth=4
nnoremap <silent> <F6> :s/^/{:s/$/}


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
" active and inactive window status bars
hi VertSplit ctermfg=15 ctermbg=200 guibg=grey31 guifg=#b2b2b2
hi StatusLine   ctermfg=15  guifg=#000000 ctermbg=200 guibg=grey91 cterm=bold gui=bold
hi StatusLineNC ctermfg=15  guifg=grey81 ctermbg=237 guibg=grey41 cterm=none gui=none


" mvim/gvim options
if has("gui_running")
    " gui colors
    hi Normal guifg=gray guibg=Grey10
    hi CursorLine cterm=NONE guibg=Grey20
    hi CursorColumn cterm=NONE guibg=Grey20
    hi FoldColumn guifg=SteelBlue1 guibg=NONE
    hi Folded guifg=lemonchiffon4 guibg=gray13
    hi TabLineFill guifg=Grey20 guibg=Grey20
    hi TabLine guifg=bisque4 guibg=Grey20
    hi TabLineSel guifg=bisque guibg=Grey20

    set transparency=5                                  " mvim transparency
    " set lines=52 columns=130                            " window size for mvim/gvim
    set guioptions=                                     " turn off all gui chrome
    if has("gui_macvim")
        set guifont=Menlo\ for\ Powerline:h10
    endif
    if has("gui_gtk2")                                  " font for gnome
        set guifont=Monaco\ 8
    endif
endif

" macros
let @a=':%s/’/\&rsquo;/g:%s/“/\&ldquo;/g:%s/”/\&rdquo;/g:%s/—/\&mdash;/g:s/®/&reg;/g'


" ctrlp settings
let g:ctrlp_working_path_mode = 'ra'                       " manage directories starting at nearest ancestor with .git


" powerline settings
set laststatus=2
set noshowmode
