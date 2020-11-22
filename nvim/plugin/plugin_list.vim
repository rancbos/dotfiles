" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('$HOME/dotfiles/nvim/plugged')

" Editor UI
Plug 'ajmwagar/vim-deus'  " theme 1
"Plug 'glepnir/zephyr-nvim'
"Plug 'nvim-treesitter/nvim-treesitter' " theme 2

Plug 'ryanoasis/vim-devicons'  " Provide the Icons
Plug 'glepnir/dashboard-nvim'  " Startup Dashboard
Plug 'hardcoreplayers/spaceline.vim'  " Beautiful statusline
"Plug 'Yggdroot/indentLine'  " Indent Line
Plug 'nathanaelkane/vim-indent-guides'  " Indent Line
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }  " Displaying the colours 
Plug 'RRethy/vim-illuminate'  " Automatically highlighting other uses of the current word under the cursor
Plug 'luochen1990/rainbow'  " Rainbow paren
Plug 'bagrat/vim-buffet'  " Buffer Tabline


" Editor Enhance
Plug 'jiangmiao/auto-pairs'  " Insert or delete brackets, parens, quotes in pair.
Plug 'junegunn/vim-easy-align'  " Alignment
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'mbbill/undotree'  " Visualizes undo history 
Plug 'gcmt/wildfire.vim'


" File Management
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }  " Dark powered file explorer implementation
Plug 'kristijanhusak/defx-icons'  " Filetype icons for Defx
Plug 'kristijanhusak/defx-git'  " Git status icons for Defx
Plug 'kevinhwang91/rnvimr'


" Find everything
Plug 'liuchengxu/vista.vim'  " Viewer & Finder for LSP symbols and tags
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'  " Distraction-free writing
Plug 'liuchengxu/vim-clap'  " Find files word outline etc
Plug 'pechorin/any-jump.vim'  " Jump to any definition and references


" Coding
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletaion
"Plug 'tyru/caw.vim'  " Comment Plugins


" C/C++
Plug 'jackguo380/vim-lsp-cxx-highlight', { 'for': ['c', 'cpp'] }


" Python
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'raimon49/requirements.txt.vim', {'for': 'requirements'}


" Go
Plug 'fatih/vim-go' , { 'for': ['go', 'vim-plug'], 'tag': '*' }


" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'posva/vim-vue'


" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'


call plug#end()



