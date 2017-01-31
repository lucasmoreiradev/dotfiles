""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let mapleader = ","

map <Leader>N :NERDTree <Esc>
map <Leader>p :CtrlP <Esc>
map <Leader>s :Startify <Space>
map <Leader>a :Ag <Space>

map <M-BS> :nohls<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
inoremap jj <ESC>
inoremap jk <ESC>
inoremap fd <ESC>

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" Load custom plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-jade
set runtimepath^=~/.vim/bundle/vim-indent-guides
set runtimepath^=~/.vim/bundle/vim-airline
set runtimepath^=~/.vim/bundle/vim-airline-themes
set runtimepath^=~/.vim/bundle/auto-pairs
set runtimepath^=~/.vim/bundle/vim-gitgutter
set runtimepath^=~/.vim/bundle/vim-fugitive
set runtimepath^=~/.vim/bundle/GoldenView.Vim
set runtimepath^=~/.vim/bundle/gist-vim
set runtimepath^=~/.vim/bundle/vim-javascript
set runtimepath^=~/.vim/bundle/vim-startify
set runtimepath^=~/.vim/bundle/badwolf
set runtimepath^=~/.vim/bundle/flattened
set runtimepath^=~/.vim/bundle/ag.vim
set runtimepath^=~/.vim/bundle/obsession.vim
set runtimepath^=~/.vim/bundle/typescript-vim

" Set GUI customizations
set guioptions-=L
set guioptions-=r
set guifont=Inconsolata-dz\ for\ Powerline

" Indext guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4" Vim airline tweaks

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1

" JS syntax tweaks
let javascript_enable_domhtmlcss = 1

" Startify
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1
let g:startify_session_delete_buffers = 1

let g:startify_list_order = [
  \ ['   LRU:'],
  \ 'files',
  \ ['   LRU within this dir:'],
  \ 'dir',
  \ ['   Sessions:'],
  \ 'sessions',
  \ ['   Bookmarks:'],
  \ 'bookmarks',
  \ ]

let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ 'bundle/.*/doc',
            \ '/data/repo/neovim/runtime/doc',
            \ '/Users/mhi/local/vim/share/vim/vim74/doc',
            \ ]

let g:startify_bookmarks = [
            \ { 'v': '~/.vim/vimrc' },
            \ { 't': '/tmp' },
            \ '/data/vim/golfing',
            \ ]

let g:startify_custom_footer =
      \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

let g:startify_custom_header = [
      \ "                                  @;;                                       ",
      \ "                            @   ;;;;;; @@@                                  ",
      \ "                           @@  @;;;;;;@@@@@                                 ",
      \ "                           @@@ ;;;;;;@@@@@@@                                ",
      \ "                           @@@@@@@@@@@@@@@@@                                ",
      \ "                           @@@@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@           ",
      \ "                           @@@@@@```@@@@@@@@@   @               ````        ",
      \ "                            @@@@`@@```@@@@@@    @ @@@@@@@@@@@@@ ````        ",
      \ "                             @@``````@@@@@@@    @ ############. ````````@   ",
      \ "                              ````````@@@@@@    @ ......###.... `````````   ",
      \ "                            ''''''@```@@@@@@    @ .##..#######. `````````   ",
      \ "                         @;;''''''''``@@@@      @ ...#......... `````````   ",
      \ "                    @@@;;;;''''''''''@          @ ............. `````````   ",
      \ "                  ..@;;;;;;@@@@;;;;;;;          @ ############. `````````   ",
      \ "                ...@;;;;;;;;;;;;;;;;@@@@        @ ############. `````````   ",
      \ "              @....;;;;;;;;;;;;;;;;;...@;       @ ............. ````@       ",
      \ "             .....@;;;;;;;;;;;;;;;@@....@       @ ............. ````        ",
      \ "            ......;;;;;;;;;;;;;;;;;......       @               ``@         ",
      \ "           .......;;;;;;;;;;;;;;;;;......@           ,,,,,,,,,,,            ",
      \ "          .......@;;;;;;;;;;;;;;;@;.......          ``````````````          ",
      \ "         @.......@;@;@;;;;@;@@;;;;;.......    @@`````````````````````@``    ",
      \ "         ........@@;@@;@@@;@;@;@@;;.......@                        `````    ",
      \ "        @........@@;@;@;@;@@;@;@;;;........               ```````` `````    ",
      \ "        @........@;;;;;;;;;;@;@;@;;@.......@                       `````    ",
      \ "        ........ @;;;;;;;;;;;;;;@;;;........@ @@@@    @@`@@`@@     `````    ",
      \ "        ........ @;;;;;;;;;;;;;;;;;;;................```````@``    `````    ",
      \ "        @......@ @;;;;;;;;;;;;;;;;;;;@...............`````@@``@@@@@@``@@    ",
      \ "         ......  @;;;;;;;;;;;;;;;;;;;;..............@````@@@@`  ``@@`@@     ",
      \ "         ......  @;;;;;;;;;;;;;;;;;;;@ .............@@@    @ @``@  ``@@@    ",
      \ "           @@@@   ;;;;;;;;;;;;;;;;;;;  @............@@@@@@@@@@@@@@``@@@@,   ",
      \ "           ````   ;;;;;;;;;;;;;;;;;;;   @..........@@@@@@@@@@@@@@@@@@,,,,   ",
      \ "            ```@  @@@@@@@@@;;;;;;;;;@     .........,,,,,,,,,,,,,,,,,,,,@,,  ",
      \ "            ````  .............@;;;;@         ,@@@@@,,,,,,,,,,,,,@,,,@,,,,  ",
      \ "            ````@ ...............@;;         @,@,,,@,,,,,,,,,,,,,@,,,@,,@,@ ",
      \ "         @@`@````     @@@..........@         ,,@,,,,,,,,,,,,,,,,,,,,,,,,,,, ",
      \ "         ```````` @@@@@@@@@@@@@....          ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, ",
      \ "         ``@::::::@@@ @@@@@@@@@@@@@@         ,,,,,,,,,,@,,,,,,,,,,,,,,,,,@@ ",
      \ "         `@::::::::::::::@@@@@@@@@@@        @@@@@,,,,,,@,,,,,,,,,,,,,,@@@@@@",
      \ "          @:::::@:@@@:::::::::::@@@@;@:::::::::@@@@@@@@@@,,,,,,,@@@@@@@@@@@@",
      \ "          @@::::@::::@::::@@@@@@@::;@;::::::::::::::@@@@@@@@@@@@@@@@@@@,,,,,",
      \ "          :@::::@:::@@::::::@@::@::@  @:@::::::::::::@,@,@@@@@,,,,,,,,,,,,,,",
      \ "          :@@:::@::::@:@::@:::::::::@@ `@@::::@@@@@::@,@,,,,,,,,,,,,,,,,,,,,",
      \ "          ::::::@::::::@::@:::::::::@;`@@@:::::::::::@,,,,,,,,,,,,,,,,,,,,,,",
      \ "          :::@:::@@@@::::::@::@@::::@@``@::::::@:::::,,,,,,,,,,,,,,,,,,,,,,,",
      \ "         @::::@::::::::::::::@::::::@@``@:::::@:@::::,,,,,,,,,,,,,,,,,,,,,,,",
      \ "         @:::::@::::::::@::::::::::::;@@@:::@:@:::@:,,,,,,,,,,,,,,,,,,,,,,,,",
      \ "         @@::::: @@:::::::::::::::::@@;;@  @:::::::@,,,,,,,,,,,,,,,,,,,,,,,,",
      \ "         @@@@::@ ,@@@@@@@@@@@@@@@@,   ;;   @:::::::,,,,,,,,,,,,,,,,,,,@,,,,@",
      \ "         @@@@@@@@,,,@,,@,,,,,,,,,,@,  ;;   @@@::@:,,,,,,,,,,,,,,,,,,,,@,,@@@",
      \ "         @@@@@@@,,,,,,,@,,,,,,,,,,,,  ;@  @@@@@@@@@@@@@@@@@@@,,,,@@@@@@@@@@ ",
      \ "         @@@@@@ ,@,,,,,@,,,,,,@,,,,,@ ;   @@@@@@@,@@@@@@@@@@@@@@@@@@@@@@@,, ",
      \ "         @@@@@@ ,@,,,,,,,,,,,,@,,@,@,     @@@@@@@,,,,,,@,,,,,,,,,@,,,,,,,,, ",
      \ "         @@@@@@@@@@,,,,,,,,,,,@,,@@@@     @@@@@@,,,,,,,@,,,,,,,,,@,,,,,,,,@ ",
      \ "         @@@@@@@,@@@@@@@@@@@@@@@@@@@,     @@@@@@,,,,,,,@,,,,,,,,,@,,,@,,@,  ",
      \ "         @@@@@@@ ,,,,,,,,,,,,,,,@,,@  ;;   :::::::,,,,,,,,,,,,,,,,,,,,@,,,,@",
      \ "          @@@@@@,,,,,,@@@@@@@@@,,,,,,     @@@@@@,,,@,,,,,,,,,,,,,,,,,,,,,@  ",
      \ "         @@@@@ ,,,,,,,,,,,,,,,@,,,,,,@   @@@@@@,,,,@,,,,,,,,,,,,,,,,,,,,,   ",
      \ "         @@@@@ ,,,,,,,,,,,,,,,@,,,,,,@   @@@@@@,,,,,,,,,,,,,@,,,,,,,@,,,@   ",
      \ "        @@@@@@ ,,,,,,,,,,,,,,,@,,,,,,@   @@@@@@ @,,,,,,,,,,,@,,,,,,,,,,@    ",
      \ "       @@@@@@@ ,,,,,,,,,,,,,,,@,,,,,,    @@@@@     @,,,,,,,,@,,,@,,,@       ",
      \ "    @@@@@@@@@@ ,,,,,,,,,,,,,,,@,,,,,,   @@@@@@@        @@,,,@,,@@           ",
      \ "   @@@@@@@@@@@ @,,,,,,,,,,,,,,@,,,,,@   @@@@@@@@@@@@@                       ",
      \ "     @@@@@@@@@ @@@@@@@,,,,,,,,@,@@@@@   @@@@@@@@@@@@@                       ",
      \ "      @@@ @@@@  ,,,@@@@@@@@@@@@@@@@@,   @@@@@@@@@@@                         ",
      \ "          @@@   ,,,,,,,,,,,,,,,,,,,,@   @@@@@@@                             ",
      \ "                @@,,,,,,,,,,,,,,,,,,     @                                  ",
      \ "                 ,,,@,,@,,,,,,,,,,@,                                        ",
      \ "                 ,,,@,,@,,,,,,,,@,,                                         ",
      \ "                   ,,,,@,,,,,,,,,@                                          ",
      \ "                      @,,,@,,@@                                             ",
      \ '',
      \ '',
      \ ]


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

hi StartifyBracket ctermfg=240
hi StartifyFile    ctermfg=147
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifyPath    ctermfg=245
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240

" Launch colorscheme based on time of day
if strftime("%H") > 8 && strftime("%H") < 19
  set t_Co=256
  let g:solarized_termcolors=256
  syntax enable
  set background=light
  colorscheme solarized
  let g:airline_theme='badwolf'
else
  colorscheme molokai
  let g:airline_theme='simple'
endif

let NERDTreeIgnore=['buildjs$']
