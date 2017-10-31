""""""""""""""""""""""""""""""
" => Tabularize plugin
""""""""""""""""""""""""""""""
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>: :Tabularize /:<CR>

""""""""""""""""""""""""""""""
" => Bbye buffer plugin
""""""""""""""""""""""""""""""
noremap gw :Bdelete<CR>

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_max_height = 25
let g:ctrlp_map = '<c-p>'
map <leader>b :CtrlPBuffer<cr>

let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => EMMET-VIM
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_emmet_mode='a'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankstack_map_keys = 0
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<F2>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets"

""""""""""""""""""""""""""""""
" => vim-angular
""""""""""""""""""""""""""""""
let g:angular_filename_convention = 'snakecased'

""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_key_invoke_completion = '<F2>'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
let g:ycm_cache_omnifunc = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=25
let g:NERDTreeChDirMode=2
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
map <leader>nc :NERDTreeCWD<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-f>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => delimit-mate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let delimitMate_excluded_regions 
let delimitMate_expand_cr = 1
let delimitMate_jump_expansion = 1
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="wombat"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_powerline_fonts=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker) ## ADD JADE, SASS, etc, ES6
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_debug = 3

" To ignore angular directives & proprietary html
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-" ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected", "<img> lacks \"src\" attribute"]
let g:syntastic_html_tidy_quiet_messages = { "level" : "warnings" }

" Javascript
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint_d'
let g:jsx_ext_required = 0
autocmd BufNewFile,BufRead *.jsx let b:jsx_ext_found = 1
autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx

" Jade
let g:syntastic_jade_checkers = ['jade_lint']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript-libraries-syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter,requirejs'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-renamer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>r :Renamer<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git line changes -/+ )
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
let g:gitgutter_override_sign_column_highlight=0
let g:gitgutter_sign_column_always=1
let g:gitgutter_sign_highlight_lines=1
set updatetime=250
nnoremap <silent> <leader>d :GitGutterToggle<cr>

""""""""""""""""""""""""""""""""""""""
" => COMMENT_BOXES"
""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * nmap ,mc !!boxes<CR>
autocmd BufEnter * vmap ,mc !boxes<CR>
autocmd BufEnter * nmap ,xc !!boxes<CR>
autocmd BufEnter * vmap ,xc !boxes<CR>
autocmd BufEnter *.html nmap ,mc !!boxes -d html-cmt<CR>
autocmd BufEnter *.html vmap ,mc !boxes -d html-cmt<CR>
autocmd BufEnter *.html nmap ,xc !!boxes -d html-cmt -r<CR>
autocmd BufEnter *.html vmap ,xc !boxes -d html-cmt -r<CR>
autocmd BufEnter .vim*,.exrc nmap ,mc !!boxes -d vim-cmt<CR>
autocmd BufEnter .vim*,.exrc vmap ,mc !boxes -d vim-cmt<CR>
autocmd BufEnter .vim*,.exrc nmap ,xc !!boxes -d vim-cmt -r<CR>
autocmd BufEnter .vim*,.exrc vmap ,xc !boxes -d vim-cmt -r<CR>

""""""""""""""""""""""""""""""""""""""
" => VIM-SURROUND (OVERRIDE)"
""""""""""""""""""""""""""""""""""""""
xmap S   <Plug>VSurround
