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

set termguicolors	
set number
set cursorline
set t_Co=256
set relativenumber
set list
set listchars=tab:\|\ ,trail:▫
set softtabstop=4
set tabstop=4
set sw=4
set clipboard+=unnamedplus

colorscheme gruvbox
"colorscheme nord
"colorscheme palenight
"colorscheme dracula

if (has("mac"))
	let g:python3_host_prog = '~/.local/bin/python3'
	set directory=/tmp
endif
