source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
"" Vim UI
"--------
"" color scheme
set background=dark
colorscheme PaperColor
" colorscheme molokai
" colorscheme Tomorrow-Night-Eighties
" colorscheme Tomorrow-Night
" colorscheme desertEx
" if !has('gui_running')
"     let g:solarized_termcolors=256
"     let g:solarized_termtrans=1
" endif
" colorscheme solarized

" if (has("gui_running"))
"     colorscheme desert
" endif

" highlight current line
" set cursorcolumn         		      " high light cursor column
set cursorline           	          " high light cursor line
" hi CursorLine cterm=underline term=underline ctermbg=None

" textwidth hightligh
" au FileType cpp,cxx,c,h,hxx,cc,python,hh,sh setlocal number colorcolumn=-0
" highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" let &colorcolumn=join(range(&tw,999),",")
" highlight ColorColumn ctermbg=235 guibg=#2c2d27
" hi ColorColumn ctermbg=lightgrey guibg=lightgrey


" search
set incsearch
set hls
" " set highlight                                                   " conflict with highlight current line
set ignorecase
set smartcase
"
" eidtor settings
"set history=1000
set noautochdir 			                                      " disable auto change dir
" set nocompatible
" set nofoldenable                                                  " disable folding"
" set confirm                                                       " prompt when existing from an unsaved file
" set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
" " set mouse=a                                                       " use mouse in all modes
" set report=0                                                      " always report number of lines changed                "
" set nowrap                                                        " dont wrap lines
" set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
" set showmatch                                                     " show matching bracket (briefly jump)
" set showcmd                                                       " show typed command in status bar
" set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
" set matchtime=2                                                   " show matching bracket for 0.2 seconds
" set matchpairs+=<:>                                               " specially for html
" set autoread              		                                  " Set to auto read when a file is changed from the outside
" set nofoldenable
" set fdm=syntax            		                                  " floader lines
" set sm        				                                      " bracket mactch

" Default Indentation
set cindent
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
"set textwidth=80
" set smarttab
set expandtab       " expand tab to space
set wildmenu
set wildmode=longest:full,full

" set gfn=YaHei\ Consolas\ Hybrid\ 12
set gfn=Courier\ 10\ Pitch\ 12

" set list
set listchars=tab:»·,eol:↩,nbsp:·,extends:…,space:·,precedes:<,extends:>,trail:·

autocmd FileType cpp,java,sh,hh,cc,c,xml setlocal et sta sw=4 sts=4
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType json setlocal autoindent expandtab  formatoptions=tcq21 textwidth=120 shiftwidth=2 tabstop=8 foldmethod=syntax
"
" " syntax support
" autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" " js
" let g:html_indent_inctags = "html,body,head,tbody"
" let g:html_indent_script1 = "inc"
" let g:html_indent_style1 = "inc"
"

"-----------------
"" Plugin settings
"-----------------
"
" delimitMate
let b:delimitMate_autoclose = 1
let b:delimitMate_expand_cr = 1
let delimitMate_expand_cr = 1
" au FileType python let b:delimitMate_nesting_quotes = ['"']     " for python docstring

" taglist
let g:NERDTree_title = "NERDTree"
function! NERDTree_Start()
    exec '1wincmd w'
    exec 'q'
    exe 'NERDTree'
endfunction
function! NERDTree_IsValid()
    return 1
endfunction

let Tlist_Show_One_File=1    		                "只显示当前文件的tags
let Tlist_Compart_Format = 1    	                "压缩方式
let Tlist_WinWidth=36
let Tlist_Exit_OnlyWindow=1  		                "tagList窗口是最后一个窗口，则退出Vim
let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWidth = 36

" Tagbar
let g:tagbar_left = 1
nnoremap <silent> <F9> :TagbarToggle<CR>

" OmniCppComplete
" hi Pmenu ctermfg=1   	                                                    "  menu colors
" let OmniCpp_NamespaceSearch = 0
" let OmniCpp_GlobalScopeSearch = 0
" let OmniCpp_ShowAccess = 0
" let OmniCpp_ShowPrototypeInAbbr = 0
" let OmniCpp_MayCompleteDot = 0
" let OmniCpp_MayCompleteArrow = 0
" let OmniCpp_MayCompleteScope = 0
" let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" let OmniCpp_DisplayMode = 0
" set completeopt=menuone,menu,longest
" au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot=1    " 打开  . 操作符
let OmniCpp_MayCompleteArrow=1  " 打开 -> 操作符
let OmniCpp_MayCompleteScope=1  " 打开 :: 操作符
let OmniCpp_NamespaceSearch=1   " 打开命名空间
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DefaultNamespace=["std"]
let OmniCpp_ShowPrototypeInAbbr=1  " 打开显示函数原型

" Auto-Pairs
let g:AutoPairsLoaded = 0

" Valloric/YouCompleteMe
" let g:ycm_confirm_extra_conf=0
" let g:ycm_complete_in_strings=0                                     " complete strings and comments
" let g:ycm_complete_in_comments=0
" let g:ycm_collect_identifiers_from_tags_files=0
" let g:ycm_collect_identifiers_from_comments_and_strings=0
" let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_min_num_of_chars_for_completion=3
" let g:ycm_cache_omnifunc=0
" let g:jedi#completions_enabled = 1

" Yggdroot/indentLine
" let g:indentLine_char = '|│'
let g:indentLine_char = '|'
" let g:indentLine_char = '┊'
if (has("gui_running"))
else
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
endif
let g:indentLine_fileType = ['python', 'c', 'cpp', 'cc']

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs = 1
" let g:syntastic_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_balloons = 1
" let g:syntastic_checkers=['pep8']
let g:syntastic_cpp_checkers=['ycm', 'cpplint']
let g:syntastic_auto_jump = 1
let g:syntastic_enable_highlighting=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = {
            \ "mode": "passive",
            \ "active_filetypes": ["c", "cpp", "cc"],
            \ "passive_filetypes": [] }
function! <SID>LocationPrevious()
    try
        lprev
    catch /^Vim\%((\a\+)\)\=:E553/
        llast
    endtry
endfunction
function! <SID>LocationNext()
    try
        lnext
    catch /^Vim\%((\a\+)\)\=:E553/
        lfirst
    endtry
endfunction
nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> sp    <Plug>LocationPrevious
nmap <silent> sn    <Plug>LocationNext
nnoremap <silent> <Leader>ec :SyntasticToggleMode<CR>

" ctrlp
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_bottom = 1

" python-mode
let g:pymode_warnings = 0                                           "开启警告
let g:pymode_trim_whitespaces = 1                                   "保存文件时自动删除无用空格
let g:pymode_options = 1
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 10
let g:pymode_python = 'python3'
" let g:pymode_indent = 1                                           "使用PEP8风格的缩进
let g:pymode_folding = 0                                            "取消代码折叠
let g:pymode_motion = 1                                             "开启python-mode定义的移动方式
let g:pymode_virtualenv = 1                                         "自动检测并启用virtualenv
let g:pymode_run = 0                                                "不使用python-mode运行python代码
let g:pymode_breakpoint = 0
let g:pymode_lint = 1
let g:pymode_lint_ignore = "C901,W0401,E501"
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checkers = ['pyflakes', 'pylint', 'pep8']
let g:pymode_lint_cwindow = 0
let g:pymode_lint_signs = 1
"let g:pymode_lint_todo_symbol = 'WW'
"let g:pymode_lint_comment_symbol = 'CC'
"let g:pymode_lint_visual_symbol = 'RR'
"let g:pymode_lint_error_symbol = 'EE'
"let g:pymode_lint_info_symbol = 'II'
"let g:pymode_lint_pyflakes_symbol = 'FF'
let g:pymode_rope = 1
let g:ropevim_extended_complete = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_show_doc_bind = '<C-c>d'
let g:pymode_rope_regenerate_on_write = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-Tab>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'vnew'
let g:pymode_rope_rename_bind = '<C-c>rr'
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

function! ToggleErrors()
    let loclist=g:PymodeLocList.current()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        call loclist.show()
    endif
endfunction

" tab
set showtabline=1

" make tabline in terminal mode
function! Vim_NeatTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " select the highlighting
        if i + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'
        " the label is made by MyTabLabel()
        let s .= ' %{Vim_NeatTabLabel(' . (i + 1) . ')} '
    endfor
    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'
    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999XX'
    endif
    return s
endfunc

" get a single tab name
function! Vim_NeatBuffer(bufnr, fullname)
    let l:name = bufname(a:bufnr)
    if getbufvar(a:bufnr, '&modifiable')
        if l:name == ''
            return '[No Name]'
        else
            if a:fullname
                return fnamemodify(l:name, ':p')
            else
                return fnamemodify(l:name, ':t')
            endif
        endif
    else
        let l:buftype = getbufvar(a:bufnr, '&buftype')
        if l:buftype == 'quickfix'
            return '[Quickfix]'
        elseif l:name != ''
            if a:fullname
                return '-'.fnamemodify(l:name, ':p')
            else
                return '-'.fnamemodify(l:name, ':t')
            endif
        else
        endif
        return '[No Name]'
    endif
endfunc

" get a single tab label
function! Vim_NeatTabLabel(n)
    let l:buflist = tabpagebuflist(a:n)
    let l:winnr = tabpagewinnr(a:n)
    let l:bufnr = l:buflist[l:winnr - 1]
    return Vim_NeatBuffer(l:bufnr, 0)
endfunc

" get a single tab label in gui
function! Vim_NeatGuiTabLabel()
    let l:num = v:lnum
    let l:buflist = tabpagebuflist(l:num)
    let l:winnr = tabpagewinnr(l:num)
    let l:bufnr = l:buflist[l:winnr - 1]
    return Vim_NeatBuffer(l:bufnr, 0)
endfunc

" setup new tabline, just like %M%t in macvim
" set tabline=%!Vim_NeatTabLine()
" set guitablabel=%{Vim_NeatGuiTabLabel()}

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_skip_empty_sections = 1
let g:airline_theme='papercolor'

" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
"let g:airline_theme='one'

" 关于标签页的标题修改 "
" 使用了自定义函数  GuiTabLabel()
set guitablabel=%{GuiTabLabel()}"

let mapleader=','

noremap <silent><tab>m :tabnew<cr>
noremap <silent><tab>e :tabclose<cr>
noremap <silent><tab>n :tabn<cr>
noremap <silent><tab>p :tabp<cr>
noremap <silent><leader>t :tabnew<cr>
noremap <silent><leader>g :tabclose<cr>
noremap <silent><leader>1 :tabn 1<CR>
noremap <silent><leader>2 :tabn 2<CR>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>
noremap <silent><s-tab> :tabnext<CR>
inoremap <silent><s-tab> <ESC>:tabnext<CR>


" YouCompleteMe相关配置
"
"
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='./.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1                  "关闭语法提示
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_complete_in_comments=0                   " 补全功能在注释中同样有效
let g:ycm_confirm_extra_conf=0                     " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 标签补全引擎
let g:ycm_min_num_of_chars_for_completion=3        " 从第一个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=1                         " 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1           " 语法关键字补全
let g:ycm_goto_buffer_command = 'same-buffer' " 跳转打开上下分屏
map <F2> :YcmCompleter GoToDefinition<CR>
map <F3> :YcmCompleter GoToDeclaration<CR>
map <F4> :YcmCompleter GoToDefinitionElseDeclaration<CR>
set completeopt=longest,menu
" inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口

let g:ycm_register_as_syntastic_checker = 1
let g:ycm_error_symbol = '>>'

"YCM will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

" doxygen
let g:DoxygenToolkit_briefTag_funcName = "yes"

" for C++ style, change the '@' to '\'
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre = "\\brief "
let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
let g:DoxygenToolkit_paramTag_pre = "\\param "
let g:DoxygenToolkit_returnTag = "\\return "
let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_authorTag = "\\author "
let g:DoxygenToolkit_versionTag = "\\version "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_classTag = "\\class "
" if !exists("g:DoxygenToolkit_briefTag_lic_pre")
"     let g:DoxygenToolkit_briefTag_lic_pre = "@brief:   "
" endif
" if !exists("g:DoxygenToolkit_briefTag_pre")
"     let g:DoxygenToolkit_briefTag_pre = "@brief: "
" endif
" if !exists("g:DoxygenToolkit_fileTag")
"     let g:DoxygenToolkit_fileTag = "@file:    "
" endif
" if !exists("g:DoxygenToolkit_authorTag")
"     let g:DoxygenToolkit_authorTag = "@author:  "
" endif
" if !exists("g:DoxygenToolkit_dateTag")
"     let g:DoxygenToolkit_dateTag = "@date:    "
" endif
" if !exists("g:DoxygenToolkit_versionTag")
"     let g:DoxygenToolkit_versionTag = "@version: "
" endif

" clang-format
" let g:clang_format#style_options = {
"             \ "AccessModifierOffset" : -4,
"             \ "AllowShortIfStatementsOnASingleLine" : "true",
"             \ "AlwaysBreakTemplateDeclarations" : "true",
"             \ "Standard" : "C++11"}
"let g:clang_format#style_options = {
"            \ "DerivePointerAlignment": "true",
"            \ "DerivePointerBinding": "false",
"            \ "AccessModifierOffset" : -4,
"            \ "AlignAfterOpenBracket":	"Align",
"            \ "AlignConsecutiveDeclarations":	"true",
"            \ "AlignTrailingComments":	"true",
"            \ "BreakConstructorInitializersBeforeComma":    "true",
"            \ "BasedOnStyle": "LLVM",
"            \ "IndentWidth": 4,
"            \ "BreakBeforeBraces": "Custom",
"            \ "ColumnLimit": 80,
"            \ "BraceWrapping": {
"            \    "AfterClass":      "true",
"            \    "AfterControlStatement": "true",
"            \    "AfterEnum":       "true",
"            \    "AfterFunction":   "true",
"            \    "AfterNamespace":  "true",
"            \    "AfterObjCDeclaration": "true",
"            \    "AfterStruct":     "true",
"            \    "AfterUnion":      "true",
"            \    "BeforeCatch":     "false",
"            \    "BeforeElse":      "true",
"            \    "IndentBraces":    "false"}}
let g:clang_format#enable_fallback_style = 0

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
let g:clang_format#detect_style_file = 1
let g:clang_format#code_style="llvm"

" buffer explorer
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowDirectories=0
let g:bufExplorerShowRelativePath=0
let g:bufExplorerSplitRight=1

" mini buffer explorer
let g:miniBufExplVSplit = 40
let g:miniBufExplBRSplit = 0
let g:miniBufExplorerAutoStart = 0
let g:miniBufExplBuffersNeeded = 0
map <Leader>e :MBEOpen<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>

"让vim记忆上次编辑的位置
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \	exe "normal g'\"" |
            \ endif

let g:gitgutter_realtime = 1
set updatetime=500

"""""""""""""""" LeaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
" let g:Lf_WindowPosition = 'right'
" let g:LeaderfFunction = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap <m-p> :LeaderfFunction<cr>
noremap <m-n> :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_CommandMap = {'<C-]>': ['<C-V>']}
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 1
let g:Lf_HideHelp = 1
"let g:Lf_StlColorscheme = 'powerline'
let g:Lf_NormalMap = {
   \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'],
   \            ["<F6>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'] ],
   \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'],
   \            ["<F6>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'] ],
   \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
   \ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
   \ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
   \ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
   \ }
