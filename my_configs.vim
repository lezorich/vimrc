" Set colorscheme
colorscheme railscasts

" C++ identation config
set cinoptions+=g1,h1

" Configure splitting
set splitbelow
set splitright

" Set column
set colorcolumn=80

" Set gvim font
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Source\ Code\ Pro\ 9 
    endif
endif

" YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" Enable airline tabline
let g:airline#extensions#tabline#enabled = 1

" Show just the name in airline tabline
let g:airline#extensions#tabline#fnamemod = ':t'

"""""""""""""""""""""""""""""""""""""""""""""
" Ack
""""""""""""""""""""""""""""""""""""""""""""

" Use ag instead of ack (it's faster!)
let g:ackprg = 'ag --nogroup --nocolor --column'

" Open Ack and put the cursor in the right position
" The ! is for not jumping to the first result
map <leader>g :Ack! 

""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""""""""""
let NERDTreeMapOpenVSplit='v'

"""""""""""""""""""""""""""""""""""""""
" MRU
""""""""""""""""""""""""""""""""""""""""
let MRU_Exclude_Files = '^/build/.*\|^/tmp/.*'

""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
