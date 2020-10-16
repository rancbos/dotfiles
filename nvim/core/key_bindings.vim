" ===
" === Basic Mappings
" ===

" Set <LEADER> as <SPACE>; ; as :
let mapleader=" "
noremap ; :

" Save & quit
map Q :q<CR>
noremap <C-q> :qa<CR>
map S :w<CR>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Indentation
nnoremap < <<
nnoremap > >>

" Search
map <LEADER><CR> :nohlsearch<CR>  " <CR> 回车

" Adjacent duplicate words
noremap <LEADER>dw /\(\<\w\+\>\)\_s*\1

" Space to Tab
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" ===
" === Insert Mode Cursor Movement
" ===
inoremap <C-a> <ESC>A


" ===
" === Searching
" ===
noremap - N
noremap = n


" ===
" === Cursor Movement
" ===

" K/J keys for 5 times k/j (faster navigation)
noremap K 5k
noremap J 5j
" H key: go to the start of the line
noremap H 0
" L key: go to the end of the line
noremap L $

" Faster in-line navigation
noremap W 5w
noremap B 5b

" Ctrl + K or J will move up/down the view port without moving the cursor
noremap <C-K> 5<C-y>
noremap <C-J> 5<C-e>
inoremap <C-K> <Esc>5<C-y>a
inoremap <C-J> <Esc>5<C-e>a


" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
map <LEADER>w <C-w>w
map <LEADER>k <C-w>k
"map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

" Disabling the default s key
noremap s <nop>  "表示无任何操作

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <LEADER>q <C-w>j:q<CR>





" ===
" === Other useful stuff
" ===
" Open a new instance of st with the cwd
nnoremap \t :tabe<CR>:-tabmove<CR>:term sh -c 'st'<CR><C-\><C-N>:q<CR>

" Move the next character to the end of the line with ctrl+l
inoremap <C-l> <ESC>lx$p

" Opening a terminal window
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>

" Press space twice to jump to the next '<++>' and edit it
noremap <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
"noremap ` ~

noremap <C-c> zz

" set wrap
noremap <LEADER>sw :set wrap<CR> "长行显示自动折行

" find and replace
noremap \s :%s//g<left><left>

