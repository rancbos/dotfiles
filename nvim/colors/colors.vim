" ===
" === Colorscheme
" ===
colorscheme deus
set t_Co=256
set background=dark
let g:deus_termcolors=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
hi NonText ctermfg=gray guifg=grey10



" ===
" === vim-indent-guides
" ===
"let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['dashboard', 'fzf', 'defx', 'tagbar', 'vista_kind', 'vista','help']



" ===
" === indentLine
" ===
let g:indentLine_enabled = 1
let g:indentLine_color_gui = '#e9d7df'
let g:indentLine_char='¦'
"let g:indentLine_fileType = ['c', 'cpp', 'py' ]
let g:indentLine_fileTypeExclude = ['dashboard', 'fzf', 'defx', 'tagbar', 'vista_kind', 'vista','help']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel =1


" ===
" === dashboard-nvim
" ===
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_header =[
    \'',
    \' ⣿⡇⣿⣿⣿⠛⠁⣴⣿⡿⠿⠧⠹⠿⠘⣿⣿⣿⡇⢸⡻⣿⣿⣿⣿⣿⣿⣿ ',
    \' ⢹⡇⣿⣿⣿⠄⣞⣯⣷⣾⣿⣿⣧⡹⡆⡀⠉⢹⡌⠐⢿⣿⣿⣿⡞⣿⣿⣿ ',
    \' ⣾⡇⣿⣿⡇⣾⣿⣿⣿⣿⣿⣿⣿⣿⣄⢻⣦⡀⠁⢸⡌⠻⣿⣿⣿⡽⣿⣿ ',
    \' ⡇⣿⠹⣿⡇⡟⠛⣉⠁⠉⠉⠻⡿⣿⣿⣿⣿⣿⣦⣄⡉⠂⠈⠙⢿⣿⣝⣿ ',
    \' ⠤⢿⡄⠹⣧⣷⣸⡇⠄⠄⠲⢰⣌⣾⣿⣿⣿⣿⣿⣿⣶⣤⣤⡀⠄⠈⠻⢮ ',
    \'   ⣧⠄⢘⢻⣿⡇⢀⣀⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠄⢀ ',
    \'   ⣿⡆⢸⣿⣿⣿⣬⣭⣴⣿⣿⣿⣿⣿⣿⣿⣯⠝⠛⠛⠙⢿⡿⠃⠄⢸ ',
    \'   ⢿⣿⡀⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⡾⠁⢠⡇⢀ ',
    \'   ⢸⣿⡇⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⣫⣻⡟⢀⠄⣿⣷⣾ ',
    \'   ⢸⣿⡇⠄⠈⠙⠿⣿⣿⣿⣮⣿⣿⣿⣿⣿⣿⣿⣿⡿⢠⠊⢀⡇⣿⣿ ',
    \'    ⣿⡇⢀⡲⠄⠄⠈⠙⠻⢿⣿⣿⠿⠿⠟⠛⠋⠁⣰⠇ ⢸⣿⣿⣿ ',
    \'    ⣿⡇⢬⡻⡇⡄⠄⠄⠄⡰⢖⠔⠉⠄⠄⠄⠄⣼⠏  ⢸⣿⣿⣿ ',
    \'    ⣿⡇⠄⠙⢌⢷⣆⡀⡾⡣⠃⠄⠄⠄⠄⠄⣼⡟    ⢿⣿⣿ ',
    \'',
    \]

nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>cn :<C-u>DashboardNewFile<CR>
nnoremap <silent> <Leader>fh :History<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>tc :Colors<CR>
nnoremap <silent> <Leader>fa :Rg<CR>
nnoremap <silent> <Leader>fb :Marks<CR>
nnoremap <silent> <Leader>cn :<C-u>DashboardNewFile<CR>

let g:dashboard_custom_shortcut={
  \ 'last_session'       : 'SPC s l',
  \ 'find_history'       : 'SPC f h',
  \ 'find_file'          : 'SPC f f',
  \ 'new_file'           : 'SPC c n',
  \ 'change_colorscheme' : 'SPC t c',
  \ 'find_word'          : 'SPC f a',
  \ 'book_marks'         : 'SPC f b',
  \ }


" ===
" === spaceline.vim
" ===
let g:spaceline_seperate_style= 'arrow-fade'


" ===
" === vim-hexokinase
" ===
let g:Hexokinase_highlighters = ['foregroundfull']

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_ftEnabled = ['css', 'html', 'javascript']


" ===
" === vim-illuminate
" ===
let g:Illuminate_delay = 250

augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END


" ===
" === rainbow
" ===
let g:rainbow_active = 1

" ===
" === vim-buffet
" ===
noremap <Tab> :bn<CR>
noremap <Leader><Tab> :Bw<CR>

let g:buffet_always_show_tabline = 1
let g:buffet_powerline_separators = 1
let g:buffet_show_index = 1
let g:buffet_use_devicons = 1
let g:buffet_tab_icon = "\uf46a"
function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer guibg=#efafad guifg=#f34718
  hi! BuffetBuffer guibg=#1c2938 guifg=#983680

  hi! BuffetTab guibg=#93d5dc guifg=#96c24e
endfunction
