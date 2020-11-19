" <Leader>
let g:mapleader=' '

" Tabs Setting
nmap <Leader>t :tabnext<CR>
nmap <Leader>T :tabnew 
nnoremap <Tab> <C-w>w 

" Save & Exit
nmap S :w!<CR>
nmap Q :wq!<CR>
nmap E :q!<CR>

" Open Tags & NERDTree 
map <A-t> :TagbarToggle<CR>
map <A-d> :NERDTreeToggle<CR>
map <A-s> :FZF<CR>
map <A-c> :ColorHighlight<CR>
map <A-x> :ColorClear<CR>
map <Leader>p "+p
map <Leader>y "+y

