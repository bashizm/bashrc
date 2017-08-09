
"###########################################################
"set number
syntax on
set wrap	 "— попросим Vim переносить длинные строки
"set ai		 "— включим автоотступы для новых строк
set cin		 "— включим отступы в стиле Си
"Далее настроим поиск и подсветку результатов поиска и совпадения скобок
set showmatch
set hlsearch
set incsearch
set ignorecase

set lz		" — ленивая перерисовка экрана при выполнении скриптов

"Показываем табы в начале строки точками
set listchars=tab:··
set list

"Порядок применения кодировок и формата файлов
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"Занять окном с vim максимально большое пространство на экране

if has('gui')
if has('win32')
au GUIEnter * call libcallnr('maximize', 'Maximize', 1)
elseif has('gui_gtk2')
au GUIEnter * :set lines=99999 columns=99999
endif
endif

set linebreak " переносить целые слова

"set t_Co=256 " использовать больше цветов в терминале

"set statusline=%F%m%r%h%w\ [FF,FE,TE=%{&fileformat},%{&fileencoding},%{&encoding}\]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"Изменяет шрифт строки статуса (делает его не жирным)
hi StatusLine gui=reverse cterm=reverse

set laststatus=2 " всегда показывать строку состояния

set list " включить подсветку

"set listchars=tab:>-,trail:- " установить символы, которыми будет осуществляться подсветка
"Проблема красного на красном при spellchecking-е решается такой строкой в .vimrc
highlight SpellBad ctermfg=Black ctermbg=Red

set history=128 " хранить больше истории команд

"###########################################################
"## Подключаем цветовую схему one.vim 
"## предварительно скачав ее с
"## https://github.com/rakr/vim-one

"let g:airline_theme='one'

"set background=dark " for the dark version
"set background=light " for the light version
"colorscheme one

"set background=light        " for the light version
"let g:one_allow_italics = 1 " I love italic for comments
"colorscheme one
"##########################################################
"colorscheme solarized
colorscheme soso
"set background=light
"set background=dark
"airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


"PLAGINs and Vim
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'            " Project and file navigation
Plug 'majutsushi/tagbar'              " Class/module browser
Plug 'fisadev/FixedTaskList.vim'      " Pending tasks list.
Plug 'freeo/vim-kalisi'
"colorschemes
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-powerline'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'othree/xml.vim'
call plug#end()
filetype plugin on

" Бинды (альясы)
command FormatXml execute "%!xmllint --format --recover - "

"mappings

map <C-n> :NERDTreeToggle<CR>
"Показать скрытые файлы в NERD Tree
let NERDTreeShowHidden=1

" loading the plugin 
let g:webdevicons_enable = 1
" adding the flags to NERDTree 
let g:webdevicons_enable_nerdtree = 1


" adding the custom source to unite 
let g:webdevicons_enable_unite = 1

" adding the column to vimfiler 
let g:webdevicons_enable_vimfiler = 1

" adding to vim-airline's tabline 
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline 
let g:webdevicons_enable_airline_statusline = 1

" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1

" adding to flagship's statusline 
let g:webdevicons_enable_flagship_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags 
let g:webdevicons_conceal_nerdtree_brackets = 1

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" Force extra padding in NERDTree so that the filetype icons line up vertically 
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
