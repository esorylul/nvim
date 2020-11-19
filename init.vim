"  _          _       ____                _   ___     _____ __  __ 
" | |   _   _| |_   _|  _ \ ___  ___  ___| \ | \ \   / /_ _|  \/  |
" | |  | | | | | | | | |_) / _ \/ __|/ _ \  \| |\ \ / / | || |\/| |
" | |__| |_| | | |_| |  _ < (_) \__ \  __/ |\  | \ V /  | || |  | |
" |_____\__,_|_|\__, |_| \_\___/|___/\___|_| \_|  \_/  |___|_|  |_|
"               |___/ 


if empty(glob('~/.config/nvim/autoload/plug.vim'))
				silent !git clone https://github.com/junegunn/vim-plug ~/.config/nvim/autoload/vim-plug && cd ~/.config/nvim/autoload && cp ~/.config/nvim/autoload/vim-plug/plug.vim ./  && rm -rf vim-plug
				autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
source ~/.config/nvim/keymap.vim
source ~/.config/nvim/plugin.vim 
				
set number
set cursorline
set relativenumber
set list
set listchars=tab:\|\ ,trail:▫
set softtabstop=2
set tabstop=2
set clipboard+=unnamedplus

syntax on
colorscheme gruvbox



