let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dev/presentations/brand-your-types/brand-your-types
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +28 slides.md
badd +13 ~/Documents/inner-sanctum-main/Speaking/Branded\ Types.md
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/inner-sanctum-main/Speaking/Branded\ Types.md
argglobal
balt slides.md
vnoremap <buffer> hr :Gitsigns reset_hunk
nnoremap <buffer> hr :Gitsigns reset_hunk
vnoremap <buffer> hs :Gitsigns stage_hunk
nnoremap <buffer> hs :Gitsigns stage_hunk
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer>  ch <Cmd>ObsidianToggleCheckbox
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
xnoremap <buffer> ih :Gitsigns select_hunk
onoremap <buffer> ih :Gitsigns select_hunk
vnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
nnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
vnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
nnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
vnoremap <buffer> ® :Gitsigns reset_hunk
nnoremap <buffer> ® :Gitsigns reset_hunk
vnoremap <buffer> ª :Git add %
nnoremap <buffer> ª :Git add %
vnoremap <buffer> ü :Gitsigns undo_stage_hunk
nnoremap <buffer> ü :Gitsigns undo_stage_hunk
vnoremap <buffer> ß :Gitsigns stage_hunk
nnoremap <buffer> ß :Gitsigns stage_hunk
vnoremap <buffer> π :Gitsigns preview_hunk_inline
nnoremap <buffer> π :Gitsigns preview_hunk_inline
vnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
nnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--\ %s\ -->
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal completeslash=
setlocal concealcursor=
setlocal conceallevel=2
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal cursorlineopt=both
setlocal nodiff
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldignore=#
setlocal foldlevel=4
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:\\&^.\\{4\\}
setlocal formatoptions=jtcqln
setlocal iminsert=0
setlocal imsearch=-1
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal list
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal shiftwidth=4
setlocal signcolumn=auto
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=nb,en_us
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=%#lualine_a_command#\ COMMAND\ %#lualine_transitional_lualine_a_command_to_lualine_b_command#%#lualine_b_command#\ \ main\ %#lualine_transitional_lualine_b_command_to_lualine_c_normal#%<%#lualine_c_normal#\ Branded\ Types.md\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconMd_command#\ \ %#lualine_c_normal#markdown\ %#lualine_transitional_lualine_b_command_to_lualine_c_normal#%#lualine_b_command#\ \ 4%%\ %#lualine_transitional_lualine_a_command_to_lualine_b_command#%#lualine_a_command#\ \ 13:13\ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagfunc=
setlocal textwidth=80
setlocal undofile
setlocal varsofttabstop=
setlocal vartabstop=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
let s:l = 13 - ((12 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 013|
tabnext
edit ~/Documents/inner-sanctum-main/Speaking/Branded\ Types.md
argglobal
balt slides.md
vnoremap <buffer> hr :Gitsigns reset_hunk
nnoremap <buffer> hr :Gitsigns reset_hunk
vnoremap <buffer> hs :Gitsigns stage_hunk
nnoremap <buffer> hs :Gitsigns stage_hunk
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer>  ch <Cmd>ObsidianToggleCheckbox
xnoremap <buffer> <silent> [[ :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
nnoremap <buffer> <silent> [[ :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "bsW")
xnoremap <buffer> <silent> ]] :exe "normal! gv"|call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
nnoremap <buffer> <silent> ]] :call search('\%(^#\{1,5\}\s\+\S\|^\S.*\n^[=-]\+$\)', "sW")
xnoremap <buffer> ih :Gitsigns select_hunk
onoremap <buffer> ih :Gitsigns select_hunk
vnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
nnoremap <buffer> <C-G>hr :Gitsigns reset_hunk
vnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
nnoremap <buffer> <C-G>hs :Gitsigns stage_hunk
vnoremap <buffer> ® :Gitsigns reset_hunk
nnoremap <buffer> ® :Gitsigns reset_hunk
vnoremap <buffer> ª :Git add %
nnoremap <buffer> ª :Git add %
vnoremap <buffer> ü :Gitsigns undo_stage_hunk
nnoremap <buffer> ü :Gitsigns undo_stage_hunk
vnoremap <buffer> ß :Gitsigns stage_hunk
nnoremap <buffer> ß :Gitsigns stage_hunk
vnoremap <buffer> π :Gitsigns preview_hunk_inline
nnoremap <buffer> π :Gitsigns preview_hunk_inline
vnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
nnoremap <buffer> ∫ <Cmd>lua require"gitsigns".blame_line{full=true}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinscopedecls=public,protected,private
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=120
setlocal comments=fb:*,fb:-,fb:+,n:>
setlocal commentstring=<!--\ %s\ -->
setlocal complete=.,w,b,u,t
setlocal completefunc=
setlocal completeslash=
setlocal concealcursor=
setlocal conceallevel=2
setlocal nocopyindent
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal nodiff
setlocal expandtab
if &filetype != 'markdown'
setlocal filetype=markdown
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldignore=#
setlocal foldlevel=4
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\|^\\s*[-*+]\\s\\+\\|^\\[^\\ze[^\\]]\\+\\]:\\&^.\\{4\\}
setlocal formatoptions=jtcqln
setlocal iminsert=0
setlocal imsearch=-1
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal nolinebreak
setlocal nolisp
setlocal lispoptions=
setlocal list
setlocal matchpairs=(:),{:},[:],<:>
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=htmlcomplete#CompleteTags
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal scrollback=-1
setlocal noscrollbind
setlocal shiftwidth=4
setlocal signcolumn=no
setlocal smartindent
setlocal nosmoothscroll
setlocal softtabstop=4
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\\t\ ]\\+
setlocal spellfile=
setlocal spelllang=nb,en_us
setlocal spelloptions=noplainbuffer
setlocal statuscolumn=
setlocal statusline=%#lualine_a_normal#\ NORMAL\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_b_normal#\ \ main\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%<%#lualine_c_normal#\ Branded\ Types.md\ %#lualine_c_normal#%=%#lualine_c_normal#\ utf-8\ %#lualine_c_normal#\ \ %#lualine_x_filetype_DevIconMd_normal#\ \ %#lualine_c_normal#markdown\ %#lualine_transitional_lualine_b_normal_to_lualine_c_normal#%#lualine_b_normal#\ \ 1%%\ %#lualine_transitional_lualine_a_normal_to_lualine_b_normal#%#lualine_a_normal#\ \ \ 3:1\ \ 
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tagfunc=
setlocal textwidth=80
setlocal undofile
setlocal varsofttabstop=
setlocal vartabstop=
setlocal winblend=0
setlocal nowinfixbuf
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal winhighlight=
setlocal nowrap
setlocal wrapmargin=0
let s:l = 3 - ((2 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
