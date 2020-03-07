let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <C-Space> 
map! <S-Insert> *
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
vmap <NL> <Plug>IMAP_JumpForward
nmap <NL> <Plug>IMAP_JumpForward
map Q gq
xmap S <Plug>VSurround
nnoremap \d :YcmShowDetailedDiagnostic
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nnoremap <silent> <Plug>SurroundRepeat .
map <F2> :w\ll
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr> 	 pumvisible() ? "\" : "\	"
imap <NL> <Plug>IMAP_JumpForward
imap  <Plug>Isurround
inoremap jk 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set breakat=\ !-+;:,./?
set completeopt=preview,menuone
set cpoptions=aAceFsB
set display=lastline
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=grep\ -nH\ $*
set helplang=hu
set hlsearch
set iminsert=0
set nojoinspaces
set listchars=tab:»·,trail:·
set mouse=a
set mousemodel=popup
set ruler
set runtimepath=~/.vim,~/.vim/bundle/vundle,~/.vim/bundle/vim-fugitive,~/.vim/bundle/YouCompleteMe,~/.vim/bundle/surround.vim,~/.vim/bundle/tabular,~/.vim/bundle/vim-pandoc,~/.vim/bundle/vim-pandoc-syntax,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/vundle/,~/.vim/bundle/vundle/after,~/.vim/bundle/vim-fugitive/after,~/.vim/bundle/YouCompleteMe/after,~/.vim/bundle/surround.vim/after,~/.vim/bundle/tabular/after,~/.vim/bundle/vim-pandoc/after,~/.vim/bundle/vim-pandoc-syntax/after
set shortmess=filnxtToOc
set smartcase
set spelllang=hu
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set termencoding=utf-8
set updatetime=2000
set window=76
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /alma/home/monk/PHD/Publikációk/Saját/Értekezés/doktori
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +70 F2_Létfontosságú_Információs_Rendszerelemek.md
badd +71 /alma/home/monk/PHD/Publikációk/Saját/2015/Auditing_community_sofware_development/Aud_comm_sw_dev.md
badd +243 F1_Systematic_mapping_study.md
badd +0 F0_Bevezetés.md
badd +1 /alma/home/monk/PHD/Publikációk/Saját/Értekezés/ábrák/KI-feltételrendszere_bonnyai_tunde_kritikus_2014.png
argglobal
silent! argdel *
argadd F2_Létfontosságú_Információs_Rendszerelemek.md
set stal=2
edit F2_Létfontosságú_Információs_Rendszerelemek.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gB <Plug>(pandoc-keyboard-links-file-back)
nmap <buffer> \gb <Plug>(pandoc-keyboard-links-back)
nmap <buffer> \sl <Plug>(pandoc-keyboard-links-split)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-file-back) :call pandoc#hypertext#BackFromFile()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-back) :call pandoc#hypertext#BackFromLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-split) :call pandoc#hypertext#OpenLink( g:pandoc#hypertext#split_open_cmd )
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink( g:pandoc#hypertext#edit_open_cmd )
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --wrap=none\ 
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal fixendofline
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=hu
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=/alma/home/monk/PHD/Publikációk/Saját/Értekezés/.git/markdown.tags,/alma/home/monk/PHD/Publikációk/Saját/Értekezés/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=90
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 70 - ((39 * winheight(0) + 38) / 76)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
70
normal! 031|
lcd /alma/home/monk/PHD/Publikációk/Saját/Értekezés/doktori
tabedit /alma/home/monk/PHD/Publikációk/Saját/Értekezés/doktori/F0_Bevezetés.md
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [] <Plug>(pandoc-keyboard-rw-sect-end)
nmap <buffer> [[ <Plug>(pandoc-keyboard-rw-header)
nmap <buffer> \xi <Plug>(pandoc-hypertext-goto-id)
nmap <buffer> \gB <Plug>(pandoc-keyboard-links-file-back)
nmap <buffer> \gb <Plug>(pandoc-keyboard-links-back)
nmap <buffer> \sl <Plug>(pandoc-keyboard-links-split)
nmap <buffer> \gl <Plug>(pandoc-keyboard-links-open)
nmap <buffer> \rb <Plug>(pandoc-keyboard-ref-backfrom)
nmap <buffer> \rg <Plug>(pandoc-keyboard-ref-goto)
nmap <buffer> \nr <Plug>(pandoc-keyboard-ref-insert)
vmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
nmap <buffer> \_ <Plug>(pandoc-keyboard-toggle-subscript)
vmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
nmap <buffer> \^ <Plug>(pandoc-keyboard-toggle-superscript)
vmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
nmap <buffer> \~~ <Plug>(pandoc-keyboard-toggle-strikeout)
vmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
nmap <buffer> \' <Plug>(pandoc-keyboard-toggle-verbatim)
vmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
nmap <buffer> \b <Plug>(pandoc-keyboard-toggle-strong)
vmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \i <Plug>(pandoc-keyboard-toggle-emphasis)
nmap <buffer> \hcn <Plug>(pandoc-keyboard-nth-header-child)
nmap <buffer> \hcl <Plug>(pandoc-keyboard-last-header-child)
nmap <buffer> \hcf <Plug>(pandoc-keyboard-first-header-child)
nmap <buffer> \hsb <Plug>(pandoc-keyboard-prev-header-sibling)
nmap <buffer> \hsn <Plug>(pandoc-keyboard-next-header-sibling)
nmap <buffer> \hp <Plug>(pandoc-keyboard-cur-header-parent)
nmap <buffer> \hh <Plug>(pandoc-keyboard-cur-header)
nmap <buffer> \hb <Plug>(pandoc-keyboard-prev-header)
nmap <buffer> \hn <Plug>(pandoc-keyboard-next-header)
nmap <buffer> \hd <Plug>(pandoc-keyboard-remove-header)
nmap <buffer> \# <Plug>(pandoc-keyboard-apply-header)
nmap <buffer> \lcn <Plug>(pandoc-keyboard-nth-li-child)
nmap <buffer> \lcl <Plug>(pandoc-keyboard-last-li-child)
nmap <buffer> \lcf <Plug>(pandoc-keyboard-first-li-child)
nmap <buffer> \lsp <Plug>(pandoc-keyboard-prev-li-sibling)
nmap <buffer> \lsn <Plug>(pandoc-keyboard-next-li-sibling)
nmap <buffer> \llp <Plug>(pandoc-keyboard-cur-li-parent)
nmap <buffer> \ll <Plug>(pandoc-keyboard-cur-li)
nmap <buffer> \lp <Plug>(pandoc-keyboard-prev-li)
nmap <buffer> \ln <Plug>(pandoc-keyboard-next-li)
nmap <buffer> ][ <Plug>(pandoc-keyboard-ff-sect-end)
nmap <buffer> ]] <Plug>(pandoc-keyboard-ff-header)
omap <buffer> aPt :normal vaPl
vmap <buffer> <silent> aPt <Plug>(pandoc-keyboard-select-subscript-inclusive)
omap <buffer> aPu :normal vaPu
vmap <buffer> <silent> aPu <Plug>(pandoc-keyboard-select-superscript-inclusive)
omap <buffer> aPk :normal vaPk
vmap <buffer> <silent> aPk <Plug>(pandoc-keyboard-select-strikeout-inclusive)
omap <buffer> aPv :normal vaPv
vmap <buffer> <silent> aPv <Plug>(pandoc-keyboard-select-verbatim-inclusive)
omap <buffer> aPs :normal vaPs
vmap <buffer> <silent> aPs <Plug>(pandoc-keyboard-select-strong-inclusive)
omap <buffer> aPe :normal vaPe
vmap <buffer> <silent> aPe <Plug>(pandoc-keyboard-select-emphasis-inclusive)
omap <buffer> aS :normal VaS
vmap <buffer> aS <Plug>(pandoc-keyboard-select-section-inclusive)
nmap <buffer> gx <Plug>(pandoc-hypertext-open-system)
nmap <buffer> gf <Plug>(pandoc-hypertext-open-local)
omap <buffer> iPt :normal viPl
vmap <buffer> <silent> iPt <Plug>(pandoc-keyboard-select-subscript-exclusive)
omap <buffer> iPu :normal viPu
vmap <buffer> <silent> iPu <Plug>(pandoc-keyboard-select-superscript-exclusive)
omap <buffer> iPk :normal viPk
vmap <buffer> <silent> iPk <Plug>(pandoc-keyboard-select-strikeout-exclusive)
omap <buffer> iPv :normal viPv
vmap <buffer> <silent> iPv <Plug>(pandoc-keyboard-select-verbatim-exclusive)
omap <buffer> iPs :normal viPs
vmap <buffer> <silent> iPs <Plug>(pandoc-keyboard-select-strong-exclusive)
omap <buffer> iPe :normal viPe
vmap <buffer> <silent> iPe <Plug>(pandoc-keyboard-select-emphasis-exclusive)
omap <buffer> iS :normal ViS
vmap <buffer> iS <Plug>(pandoc-keyboard-select-section-exclusive)
vnoremap <buffer> j gj
nnoremap <buffer> j gj
vnoremap <buffer> k gk
nnoremap <buffer> k gk
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-goto-id) :call pandoc#hypertext#GotoID()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-system) :call pandoc#hypertext#OpenSystem()
nnoremap <buffer> <silent> <Plug>(pandoc-hypertext-open-local) :call pandoc#hypertext#OpenLocal()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-file-back) :call pandoc#hypertext#BackFromFile()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-back) :call pandoc#hypertext#BackFromLink()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-split) :call pandoc#hypertext#OpenLink( g:pandoc#hypertext#split_open_cmd )
noremap <buffer> <silent> <Plug>(pandoc-keyboard-links-open) :call pandoc#hypertext#OpenLink( g:pandoc#hypertext#edit_open_cmd )
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-backfrom) :call pandoc#keyboard#references#BACKFROM_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-goto) :call pandoc#keyboard#references#GOTO_Ref()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ref-insert) :call pandoc#keyboard#references#Insert_Ref()a
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-exclusive) :call pandoc#keyboard#styles#SelectSubscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-subscript-inclusive) :call pandoc#keyboard#styles#SelectSubscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :call pandoc#keyboard#styles#ToggleSubscript(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-subscript) :set opfunc=pandoc#keyboard#styles#ToggleSubscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-exclusive) :call pandoc#keyboard#styles#SelectSuperscript("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-superscript-inclusive) :call pandoc#keyboard#styles#SelectSuperscript("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :call pandoc#keyboard#styles#ToggleSuperscript(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-superscript) :set opfunc=pandoc#keyboard#styles#ToggleSuperscriptg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-exclusive) :call pandoc#keyboard#styles#SelectStrikeout("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strikeout-inclusive) :call pandoc#keyboard#styles#SelectStrikeout("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :call pandoc#keyboard#styles#ToggleStrikeout(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strikeout) :set opfunc=pandoc#keyboard#styles#ToggleStrikeoutg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-exclusive) :call pandoc#keyboard#styles#SelectVerbatim("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-verbatim-inclusive) :call pandoc#keyboard#styles#SelectVerbatim("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :call pandoc#keyboard#styles#ToggleVerbatim(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-verbatim) :set opfunc=pandoc#keyboard#styles#ToggleVerbatimg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-exclusive) :call pandoc#keyboard#styles#SelectStrong("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-strong-inclusive) :call pandoc#keyboard#styles#SelectStrong("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :call pandoc#keyboard#styles#ToggleStrong(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-strong) :set opfunc=pandoc#keyboard#styles#ToggleStrongg@
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-exclusive) :call pandoc#keyboard#styles#SelectEmphasis("exclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-emphasis-inclusive) :call pandoc#keyboard#styles#SelectEmphasis("inclusive")
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :call pandoc#keyboard#styles#ToggleEmphasis(visualmode())
nnoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
onoremap <buffer> <silent> <Plug>(pandoc-keyboard-toggle-emphasis) :set opfunc=pandoc#keyboard#styles#ToggleEmphasisg@
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-header-child) :call pandoc#keyboard#sections#GotoNthChildHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-header-child) :call pandoc#keyboard#sections#LastChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-header-child) :call pandoc#keyboard#sections#FirstChildHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header-sibling) :call pandoc#keyboard#sections#PrevSiblingHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header-sibling) :call pandoc#keyboard#sections#NextSiblingHeader()
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-exclusive) :call pandoc#keyboard#sections#SelectSection('exclusive')
vnoremap <buffer> <silent> <Plug>(pandoc-keyboard-select-section-inclusive) :call pandoc#keyboard#sections#SelectSection('inclusive')
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header-parent) :call pandoc#keyboard#sections#CurrentHeaderParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-header) :call pandoc#keyboard#sections#CurrentHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-sect-end) :call pandoc#keyboard#sections#PrevSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-sect-end) :call pandoc#keyboard#sections#NextSectionEnd(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-rw-header) :call pandoc#keyboard#sections#BackwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-ff-header) :call pandoc#keyboard#sections#ForwardHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-header) :call pandoc#keyboard#sections#PrevHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-header) :call pandoc#keyboard#sections#NextHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-remove-header) :call pandoc#keyboard#sections#RemoveHeader()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-apply-header) :call pandoc#keyboard#sections#ApplyHeader(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-nth-li-child) :call pandoc#keyboard#lists#GotoNthListItemChild(v:count1)
noremap <buffer> <silent> <Plug>(pandoc-keyboard-last-li-child) :call pandoc#keyboard#lists#LastListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-first-li-child) :call pandoc#keyboard#lists#FirstListItemChild()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li-sibling) :call pandoc#keyboard#lists#PrevListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li-sibling) :call pandoc#keyboard#lists#NextListItemSibling()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li-parent) :call pandoc#keyboard#lists#CurrentListItemParent()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-cur-li) :call pandoc#keyboard#lists#CurrentListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-prev-li) :call pandoc#keyboard#lists#PrevListItem()
noremap <buffer> <silent> <Plug>(pandoc-keyboard-next-li) :call pandoc#keyboard#lists#NextListItem()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal breakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=pandoc\ -t\ markdown\ --reference-links\ --wrap=none\ 
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'pandoc'
setlocal filetype=pandoc
endif
setlocal fixendofline
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=pandoc#folding#FoldExpr()
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=expr
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=pandoc#folding#FoldText()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=hu
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'pandoc'
setlocal syntax=pandoc
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=/alma/home/monk/PHD/Publikációk/Saját/Értekezés/.git/markdown.tags,/alma/home/monk/PHD/Publikációk/Saját/Értekezés/.git/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
4
normal! zo
55
normal! zo
59
normal! zo
63
normal! zo
let s:l = 31 - ((18 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
lcd /alma/home/monk/PHD/Publikációk/Saját/Értekezés/doktori
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
