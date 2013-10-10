""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

" .vimrc.after is loaded after the plugins have loaded

:set t_Co=256
colorscheme railscasts

" create and jump to the next line in insert mode
:imap <C-o>  <Esc>o

" jump throug the buffer
:nmap <C-l> ]b
:nmap <C-h> [b

" support jump the start and end of the line
:imap <C-e> <Esc>$a
:imap <C-a> <Esc>^i

" bind save key
:nmap <C-s> :w<CR>:FixWhitespace<CR>
:imap <C-s> <Esc><C-s>

" support jump a letter
:imap <C-l> <Esc>la

" map for easy motion
:map <C-t> <Esc>H\\f

" Rspec.vim mapping
:map <F9> :call RunAllSpecs()<CR>

"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

set complete-=i
