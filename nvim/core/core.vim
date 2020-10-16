" ===
" === Auto load module
" ===

source $HOME/dotfiles/nvim/core/general.vim
source $HOME/dotfiles/nvim/core/key_bindings.vim
source $HOME/dotfiles/nvim/core/machine_specific_default.vim
source $HOME/dotfiles/nvim/core/language.vim
source $HOME/dotfiles/nvim/plugin/plugin_list.vim
source $HOME/dotfiles/nvim/plugin/plugin_settings.vim



" ===
" === Auto load for first time uses
" ===

if empty(glob('$HOME/dotfiles/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/dotfiles/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

