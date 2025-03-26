"Базовая настройка vim"

set number

" Перенос длинных строк с разбиением по пробелам, а не по символам
" (слова переносятся целиком, soft wrap)
set wrap
set linebreak
set tw=120
set smartindent
set cursorline
let mapleader = ","

"Менеджер плагинов: VimPlug"

call plug#begin()

 "Любимая тема"
 Plug 'morhetz/gruvbox'

 "Красивая панель режимов"
 Plug 'itchyny/lightline.vim'

 "Встроенный Git"
 Plug 'airblade/vim-gitgutter'

 "Удобный скролл"
 Plug 'terryma/vim-smooth-scroll'

 "Подсветка синтаксиса"
 Plug 'sheerun/vim-polyglot'

 "Дерево папок"
 Plug 'preservim/nerdtree'

 "FZF - поиск по файлам"
 Plug 'junegunn/fzf'
 Plug 'junegunn/fzf.vim'

 "Linter"
 Plug 'dense-analysis/ale'

 "Позволяет открыть терминал внутри Vim"
 Plug 'vimlab/split-term.vim'

 "Добавляет emoji"
 Plug 'junegunn/vim-emoji'

 "Красивые иконки для NerdTree и прочего"
 Plug 'ryanoasis/vim-devicons'

 "Комментарии"
 Plug 'preservim/nerdcommenter'

call plug#end()


"Настройка темы"

syntax on
set background=dark
colorscheme gruvbox
let g:gruvbox_background = 'hard'

"Настройка LightLine - панель с режимами"

set laststatus=2
let g:lightline = { 'colorscheme': 'one'}


"Настройка Smooth scroll"

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


"Настройка NerdTree"

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"Настройка Ale"

let g:ale_linters = {
\   'c': ['clangd', 'gcc', 'clang'],
\}

let g:ale_completion_enabled = 1
let g:ale_c_clang_executable = 'clang'
let g:ale_c_gcc_executable = 'gcc'
let g:ale_completion_autoimport = 1
let g:ale_set_balloons = 1
let g:ale_set_highlights = 1
let g:ale_set_signs = 1
let g:ale_set_quickfix = 1
let g:ale_fix_on_save = 1

"Настройка split term"
let g:split_term_default_shell = "bash"


"Настройка emoji для git"
let g:gitgutter_sign_added = emoji#for('heavy_check_mark')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

"Настройка комментариев"
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
