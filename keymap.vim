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
map <A-f> :FZF<CR>
map <A-c> :ColorHighlight<CR>
map <A-x> :ColorClear<CR>


nnoremap r :call COmpileRunGcc()<CR>
func! COmpileRunGcc()
	exec "w"
	if &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'c'
		exec ":!gcc % -o %<"
		exec ":!time ./%<"
	elseif &filetype == 'cpp'
		exec ":!g++ % -o %<"
		exec ":!time ./%<"
	elseif &filetype == 'java'
		exec ":!javac %"
		exec ":!time java %<"
	endif
endfunc

"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,m - [ ] 
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
