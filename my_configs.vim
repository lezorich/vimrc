" Set colorscheme
colorscheme railscasts

" Show eol ¬
set list
set lcs=eol:¬

" Choose eol colors
highlight NonText ctermfg=237

" Show tabline only with 2 or more tabs
set showtabline=1

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

" Remove trailing whitespaces
fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun

:nnoremap <Leader>tw :call TrimWhitespace()<CR>

" YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""""""""""
let NERDTreeMapOpenVSplit='v'

"""""""""""""""""""""""""""""""""""""""
" MRU
""""""""""""""""""""""""""""""""""""""""
let MRU_Exclude_Files = '^/build/.*\|^/tmp/.*'

""""""""""""""""""""""""""""""""""
" Ctrlp
"""""""""""""""""""""""""""""""

" Use ag if available
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

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
