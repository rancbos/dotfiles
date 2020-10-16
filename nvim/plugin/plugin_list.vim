" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('$HOME/dotfiles/nvim/plugged')

" Pretty Dress
"Plug 'bling/vim-bufferline'
Plug 'ajmwagar/vim-deus'
Plug 'Yggdroot/indentLine'
"Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'glepnir/dashboard-nvim'


" Status line
Plug 'hardcoreplayers/spaceline.vim'


" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'


" Other visual enhancement
Plug 'ryanoasis/vim-devicons'
Plug 'luochen1990/rainbow'
Plug 'bagrat/vim-buffet'
Plug 'wincent/terminus'


" Taglist
Plug 'liuchengxu/vista.vim'


" Undo Tree
Plug 'mbbill/undotree'


" File navigation
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'





" Editor Enhancement
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`










" Mini Vim-APP
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'


" Autoformat
"Plug 'Chiel92/vim-autoformat'

" Auto Complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}


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
