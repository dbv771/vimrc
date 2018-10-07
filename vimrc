" By ZhangYong 2018-05-27


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "," "定义<leader>键
set nocompatible    "设置不兼容原始vi模式
filetype on     "设置开启文件类型侦测
filetype plugin on  "加载对应文件类型插件
set noeb        "关闭错误提示
syntax enable       "开启语法高亮功能
syntax on       "自动语法高亮
set t_Co=256        "开启256色支持
set cmdheight=2     "设置命令行高度
set showcmd     "select模式下显示选中的行数
set ruler       "总是显示光标的位置
set laststatus=2    "总是显示状态栏
set number      "开启行号显示
set cursorline      "高亮显示当前行
set whichwrap+=<,>,h,l  "设置光标键跨行
set virtualedit=block,onemore   "允许光标出现在最后一个字符的后面


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"代码缩进与排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent      "设置自动缩进
set cindent     "设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0 "设置使用C/C++语言的具体缩进方式
set smartindent     "智能选择对齐方式
filetype indent on  "自适应不同语言的智能缩进
set expandtab       "将制表符扩展为空格
set tabstop=4       "设置编辑时制表符所占的空格数
set shiftwidth=4    "设置格式化时制表符占用的空格数
set softtabstop=4       "设置4个空格为制表符
set smarttab        "在行和段开始处使用制表符
"set nowrap     "禁止折行
set backspace=2     "使用回车键正常处理indent.eol,start等


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu        "vim自身命令行模式智能补全
set completeopt-=preview    "补全时不显示窗口，只显示补全列表


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch        "高亮显示搜索结果
set incsearch       "开启实时搜索功能
set ignorecase      "搜索时大小写不敏感
set magic           "设置魔术
set smartcase       "智能区分大小写


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax       "设置基于语法进行代码折叠
set nofoldenable            "关闭代码折叠


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup        "设置不备份
set noswapfile      "禁止生成临时文件
set autoread        "文件在vim之外修改过，自动重新载入
set autowrite       "设置自动保存
set confirm         "在处理未保存或只读文件时，弹出确认


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新建文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile *.cpp,*.cc,*.c,*.hpp,*.h,*.sh,*.py exec ":call SetTitle()"
func SetTitle()
    if expand("%:e") == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "")
    elseif expand("%:e") == 'cpp'
        call setline(1,"#include <iostream>")
        call append(line("."), "")
    elseif expand("%:e") == 'cc'
        call setline(1,"#include <iostream>")
        call append(line("."), "")
    elseif expand("%:e") == 'c'
        call setline(1,"#include <stdio.h>")
        call append(line("."), "")
    elseif expand("%:e") == 'h'
        call setline(1, "#pragma once")
    elseif expand("%:e") == 'hpp'
        call setline(1, "#pragma once")
    endif
endfunc
autocmd BufNewFile * normal G

" vim-plug
" ************BEGIN*************
call plug#begin('~/.vim/plugged')
" 对齐插件
Plug 'junegunn/vim-easy-align'
" nerdtree
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
"nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'
"vim-airline
Plug 'vim-airline/vim-airline'
"vim-airline themes
Plug 'vim-airline/vim-airline-themes'
"vim-colorschemes
Plug 'flazz/vim-colorschemes'
"change scheme
Plug 'chxuan/change-colorscheme'
"incsearch
Plug 'haya14busa/incsearch.vim'
"vim-easymotion
Plug 'easymotion/vim-easymotion'
"YCM
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --java-completer --gocode-completer' }
"Vim-script library L9
Plug 'vim-scripts/L9'
"vim-commentary
Plug 'tpope/vim-commentary'
"git commit browser
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
"git gutter
Plug 'airblade/vim-gitgutter'
"vim-repeat
Plug 'tpope/vim-repeat'
"vim-surround
Plug 'tpope/vim-surround'
"vim-endwise
Plug 'tpope/vim-endwise'
"vim-devicons
Plug 'ryanoasis/vim-devicons'
"vim auto pair
Plug 'jiangmiao/auto-pairs'
"fuzzy finder local files
Plug 'Yggdroot/LeaderF', { 'do': './install.sh'  }
"text filtering and alignment
Plug 'godlygeek/tabular'
"ack
Plug 'mileszs/ack.vim'
"vim-smooth_scroll
Plug 'terryma/vim-smooth-scroll'
"tarbar
Plug 'majutsushi/tagbar'
"MarkdownPreview
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
"vim expand region
Plug 'terryma/vim-expand-region'
"vim start page
Plug 'mhinz/vim-startify'
"multiple selections
Plug 'terryma/vim-multiple-cursors'
"undotree
Plug 'mbbill/undotree'
"fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
"paste plugins
Plug 'ConradIrwin/vim-bracketed-paste'
"java complete
Plug 'artur-shaik/vim-javacomplete2'
"Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
"buffer change
Plug 'vim-scripts/bufexplorer.zip'
"intains a history of previous yanks
Plug 'maxbrunsfeld/vim-yankstack'
"synchronous Lint Engine 语法检查
Plug 'w0rp/ale'
"go plugins
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"auto formater
Plug 'Chiel92/vim-autoformat'
"代码补全
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
"编程提示
Plug 'davidhalter/jedi-vim'
"Dracular vim
Plug 'dracula/vim', { 'as': 'dracula' }
"文本编辑
Plug 'chxuan/vim-edit'
"强化f/t
Plug 'rhysd/clever-f.vim'
call plug#end()
" ************END*************

"编辑vimrc文件
nnoremap <leader>e :e $MYVIMRC<cr>
"重新加载vimrc文件
" nnoremap <leader>r :source $MYVIMRC<cr>

" 安装、更新、删除插件
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>u :PlugUpdate<cr>
nnoremap <leader><leader>c :PlugClean<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"插件配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"nerdtree
"close vim if only nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"open nerdtree automatically when vim starts with a dictory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"快捷键
map <leader>m :NERDTreeToggle<cr>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ 'Ignored'   : '☒',
            \ "Unknown"   : "?"
            \ }

"vim-airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

"vim-colorschemes
"默认主题
colorscheme 3dglasses

"change-colorscheme
nnoremap <silent> <F9> :PreviousColorScheme<cr>
inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
nnoremap <silent> <F10> :NextColorScheme<cr>
inoremap <silent> <F10> <esc> :NextColorScheme<cr>
nnoremap <silent> <F11> :RandomColorScheme<cr>
inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
nnoremap <silent> <F12> :ShowColorScheme<cr>
inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

"incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
"使用<Esc><Esc>暂时关闭高亮功能
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
"使用Ctrl+k统计匹配个数
" nnoremap <silent> <C-k> :%s///gn<CR>

"vim-easymotion
let g:EasyMotion_smartcase=1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)
map <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)
nmap <leader>s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>j <Plug>(easymotion-bd-jk)
nmap <Leader>j <Plug>(easymotion-overwin-line)


"YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
"******************** YCM C language mappings**************************
" nnoremap <leader>h :YcmCompleter GoToDeclaration<cr>
" nnoremap <leader>i :YcmCompleter GoToDefinition<cr>
" nnoremap <leader>o :YcmCompleter GoToInclude<cr>
" nnoremap <leader>ii :YcmCompleter FixIt<cr>
" nmap <F4> :YcmDiags<cr>
"******************** YCM Java language mappings**************************
nnoremap <Tab>o :YcmCompleter OrganizeImports<cr>
nnoremap <Tab>f :YcmCompleter Format<cr>
nnoremap <Tab>e :YcmCompleter FixIt<cr>
nnoremap <Tab>d :YcmCompleter GoToDefinition<cr>
nnoremap <Tab>r :YcmCompleter GoToReferences<cr>
nnoremap <Tab>c :YcmCompleter GetDoc<cr>
nnoremap <Tab>t :YcmCompleter GetType<cr>
nnoremap <Tab>n :YcmCompleter RefactorRename


"git commit browser:vim-fugitive and gv
"open commit browser
nnoremap <leader>g :GV<cr>
"will only list commits that affected the current file
nnoremap <leader>G :GV!<cr>
"fills the location list with the revisions of the current file
nnoremap <leader>gg :GV?<cr>

"tpope/vim-fugitive
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gm :Gmove<cr>
nnoremap <leader>gc :Gcommit -a <cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gp :Gpush<cr>

" vim-gitgutter
" gitgutter customise symbols
let g:gitgutter_sign_added = 'A'
let g:gitgutter_sign_modified = 'M'
let g:gitgutter_sign_removed = 'D'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = 'W'
" gitgutter mappings
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk]
nmap <Leader>hv <Plug>GitGutterPreviewHunk
" stage, and undo hunks with  <leader>hs, and <leader>hu
nnoremap <leader>go :GitGutterLineHighlightsEnable<cr>
nnoremap <leader>gf :GitGutterLineHighlightsDisable<cr>
nnoremap <leader>gt :GitGutterLineHighlightsToggle<cr>

"vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"leaderF
nnoremap <leader>ff :LeaderfFile ~<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

"tabular
let g:tabular_loaded = 1
nnoremap <leader>l :Tab /\|<cr>
nnoremap <leader>= :Tab /=<cr>

" ack
"<Leader>c进行搜索，同时不自动打开第一个匹配的文件"
map <Leader>c :Ack!<Space>
"调用ag进行搜索
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
"高亮搜索关键词
let g:ackhighlight = 1
"修改快速预览窗口高度为15
let g:ack_qhandler = "botright copen 15"
"在QuickFix窗口使用快捷键以后，自动关闭QuickFix窗口
let g:ack_autoclose = 1
"使用ack的空白搜索，即不添加任何参数时对光标下的单词进行搜索，默认值为1，表示开启，置0以后使用空白搜索将返回错误信息
let g:ack_use_cword_for_empty_search = 1
"部分功能受限，但对于大项目搜索速度较慢时可以尝试开启
" let g:ack_use_dispatch = 1


" vim-smooth-scroll
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"tarbar
let g:tagbar_width = 30
nnoremap <silent> <leader>t :TagbarToggle<cr>
inoremap <silent> <leader>t <esc> :TagbarToggle<cr>

" markdown
let uname = system('uname -s')
if uname == "Darwin\n"
    let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
else
    let g:mkdp_path_to_chrome = '/usr/bin/google-chrome-stable %U'
endif
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview
"vim回调函数，参数打开的url
let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
"打开markdown自动打开浏览器预览
"设置为0时关闭
let g:mkdp_auto_start = 1
"编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预览窗口
let g:mkdp_auto_open = 1
"设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览
let g:mkdp_refresh_slow = 0

"expand region expand
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
let g:expand_region_text_objects = {
            \ 'iw'  :0,
            \ 'iW'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1,
            \ 'ib'  :1,
            \ 'iB'  :1,
            \ 'il'  :0,
            \ 'ip'  :1,
            \ 'ie'  :0,
            \ }"


" vim-multiple-cursors
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-j>'
let g:multi_cursor_select_all_word_key = '<A-j>'
let g:multi_cursor_start_key           = 'g<C-j>'
let g:multi_cursor_select_all_key      = 'g<A-j>'
let g:multi_cursor_next_key            = '<C-j>'
let g:multi_cursor_prev_key            = '<C-k>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"undotree
nnoremap <leader>u :UndotreeToggle<cr>

"fzf settings
nnoremap <Tab> :FZF <cr>
function! s:build_quickfix_list(lines)
    call setqflist(map(copy(a:lines), '{ "filename": v:val  }'))
    copen
    cc
endfunction
let g:fzf_action = {
            \ 'ctrl-q': function('s:build_quickfix_list'),
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
"Default fzf layout
let g:fzf_layout = { 'down': '~40%'  }
"set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew'  }
let g:fzf_layout = { 'window': '-tabnew'  }
let g:fzf_layout = { 'window': '10split enew'  }
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

"junegunn/goyo.vim
nnoremap <c-w> :Goyo <cr>

"yankstack
nmap <leader>o <Plug>yankstack_substitute_older_paste
nmap <leader>O <Plug>yankstack_substitute_newer_paste

"ale 语法检查配置
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"文件内容发生变化时不进行检查
let g:ale_lint_on_text_changed = 'never'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0"
" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['pylint'],
            \   'java': ['javac'],
            \   'Go': ['gofmt'],
            \}

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>a触发/关闭语法检查
nmap <Leader>a :ALEToggle<CR>
"<Leader>ad查看错误或警告的详细信息
nmap <Leader>ad :ALEDetail<CR>

"vim-go
au FileType go nmap <Space>b :GoBuild<cr>
au FileType go nmap <Space>r :GoRun<cr>
au FileType go nmap <Space>d :GoDef<cr>
au FileType go nmap <Space>i :GoImport
au FileType go nmap <Space>n :GoRename<cr>
au FileType go nmap <Space>s :GoInstall<cr>
au FileType go nmap <Space>t :GoTest<cr>
au FileType go nmap <Space>at :GoAddTags<cr>
au FileType go nmap <Space>rt :GoRemoveTags<cr>
let g:go_fmt_command = "goimports"
" au FileType go nnoremap <leader>r :!go run %<cr>

"Chiel92/vim-autoformat
"F3格式化代码
noremap <F3> :Autoformat<CR>
let g:autoformat_verbosemode=1
"保存时自动格式化代码，针对所有支持的文件
" au BufWrite * :Autoformat<cr>

"Dracular vim
color dracula

"vim edit
nnoremap Y :CopyText<cr>
nnoremap D :DeleteText<cr>
nnoremap C :ChangeText<cr>
nnoremap <leader>r :ReplaceTo<space>

"f/t增强
let g:clever_f_ignore_case=1
let g:clever_f_smart_case=1
map ; <Plug>(clever-f-repeat-forward)
map ' <Plug>(clever-f-repeat-back)

"other
nnoremap <leader>q :q<cr>
inoremap <leader>q <Esc>:q<cr>

"buffer change
nnoremap <c-n> :bn<cr>
nnoremap <c-p> :bp<cr>
nnoremap <leader>d :bd<cr>
nnoremap <c-d> yyp

"Easy window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

"mapping esc
inoremap jj <Esc>

" C-U in insert/normal mode, to uppercase the word under cursor
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwUe

"移动到配对的右外侧
imap <c-a> <Esc>la
"插入模式移动到下一行
imap <c-d> <Esc>o
"移动到末尾
imap <c-e> <Esc>A

nnoremap <leader>vc iecho -e “\033[42;37m 绿底白字 \033[0m” 

 """"""""""""""""""""""
    "Quickly Run
    """"""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
