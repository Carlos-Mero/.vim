set nocompatible
set hls ic
set number
set cursorline
set linebreak
set smartindent
set smartcase
set encoding=utf-8
set laststatus=2
set ts=4
set expandtab
set shiftwidth=4
set nofoldenable
set display=lastline
set noimdisable
set signcolumn=no
set pumheight=13
set nobackup
set noswapfile
set noundofile
set viminfo     ='100,n~/.vim/files/info/viminfo
set updatetime=300
set timeout
set timeoutlen=1000
set ttimeout
set ttimeoutlen=7
set pythonthreedll=/opt/homebrew/bin/python3
set ttyfast
set hidden
set mouse=a
set visualbell
set t_vb=
set incsearch
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
au TerminalWinOpen * setlocal nonumber

"let g:loaded_matchparen = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:csv_default_delim=','
let g:csv_delim_test = ',;|'
let g:csv_hiGroup = "IncSearch"
let g:csv_hiHeader = 'Function'
let g:godot_executable = '/Applications/Godot.app'
let g:python_highlight_all = 1
"autocmd FileType clap_input let g:completion_enable_auto_pop = 0
"let g:clap_plugin_experimental = v:true
"let g:clap_layout = { 'relative': 'editor' }

call plug#begin('~/.vim/plugged')
  "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"  Plug 'itchyny/lightline.vim'
"  Plug 'ryanoasis/vim-devicons'
  "Plug 'plasticboy/vim-markdown'
  Plug 'mechatroner/rainbow_csv'
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'kaarmu/typst.vim'
  Plug 'habamax/vim-godot'
  Plug 'vim-python/python-syntax'
  Plug 'yegappan/lsp'
  Plug 'girishji/autosuggest.vim'
  Plug 'girishji/vimcomplete'
  "Plug 'liuchengxu/vim-clap', { 'do': { -> clap#installer#force_download() } }
call plug#end()

nnoremap <leader>w <Cmd>TypstWatch<CR>
nnoremap <leader>p :MarkdownPreview<CR>
nnoremap <leader>s :MarkdownPreviewStop<CR>
nnoremap <leader>/ :nohl<CR>
nnoremap <leader>x :bd<CR>
nnoremap <M-x> :bd!<CR>
noremap <SPACE>h <C-W>h
noremap <C-h> <C-W>h
noremap <SPACE>j <C-W>j
noremap <C-j> <C-W>j
noremap <SPACE>k <C-W>k
noremap <C-k> <C-W>k
noremap <SPACE>l <C-W>l
noremap <C-l> <C-W>l
noremap <SPACE>H <C-W>H
noremap <SPACE>J <C-W>J
noremap <SPACE>K <C-W>K
noremap <SPACE>L <C-W>L
noremap <SPACE>+ 3<C-W>+
noremap <SPACE>- 3<C-W>-
noremap <SPACE>> <C-W>>
noremap <SPACE>< <C-W><
noremap <SPACE>w <C-W>_
tnoremap <C-x> <C-\><C-N>
tnoremap <ESC> <C-\><C-N>
noremap <SPACE><Down> <C-W><Down>
noremap <SPACE><Up> <C-W><Up>
noremap <SPACE><Left> <C-W><Left>
noremap <SPACE><Right> <C-W><Right>
noremap J <C-D>
noremap j gj
noremap K <C-U>
noremap k gk
noremap H g0
noremap L g$
noremap D <C-D>
noremap U <C-U>
noremap <c-n> :%!xxd<CR>
nnoremap ; :tabprevious<CR>
nnoremap ' :tabnext<CR>
nnoremap q :q<CR>
nnoremap z :bd<CR>
nnoremap <SPACE>e :LspDiag-show<CR>
nnoremap gd :LspGotoDefinition<CR>
nnoremap gi :LspGotoImpl<CR>
nnoremap <leader>a :LspOutline<CR>

colorscheme pinky
" Extra Highlights
hi Special guifg=#bdd0f1
hi PreProc guifg=#90dc93
hi texMathDelimZoneTI guifg=#919191
hi texMathDelimZoneTD guifg=#919191
hi LineNr guifg=#8e7faa ctermfg=15
hi cursorlinenr guifg=#f0f0f0 guibg=#eea8e2
hi Visual guifg=#ffffff guibg=#eea8e2 guisp=#eea8e2 ctermfg=255 ctermbg=141
hi Macro guifg=#ea735c
hi Structure gui=bold
hi Repeat gui=bold
hi Directory gui=bold
hi BufferCurrentSign guifg=#82aaff
hi BufferCurrentMod guifg=#82aaff
hi BufferLineIndicatorSelected guibg=#eea8e2
hi MatchParen guifg=#fdfdfd guibg=#eea8e2
hi typstMathBold guifg=#eecdef gui=bold
hi typstMathScripts guifg=#eecdef gui=bold
hi typstMathQuote guifg=#eecdef gui=bold
hi LspSemanticParameter guifg=#e17f32
hi LspSemanticProperty guifg=#c7eca1
hi LspSemanticClass guifg=#d4cbec gui=bold
hi LspSemanticStruct guifg=#d4cbec gui=bold
hi link pythonAttribute LspSemanticProperty
hi link pythonSync LspSemanticProperty
hi User1 guifg=#eea040 guibg=#333536
hi User2 guifg=#dd3333 guibg=#333536
hi User3 guifg=#ff66ff guibg=#333536
hi User4 guifg=#a0ee40 guibg=#333536
hi User5 guifg=#eeee40 guibg=#333536

if has("gui_running")
  nmap <silent> <ForceClick> :LspGotoDefinition<CR>
  nnoremap <C-z> :terminal<CR>
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  set guioptions+=k
  set lines=47 columns=80
  set gcr=a:blinkon0
  set transparency=23
  set blurradius=17
  set anti
  set background=dark
  set guifont=SF\ Mono:h14
  set splitbelow
  set splitright
endif
au FileType csv setlocal nowrap

" Plugin Settings
let lspOpts = #{
        \   aleSupport: v:false,
        \   autoComplete: v:true,
        \   autoHighlight: v:false,
        \   autoHighlightDiags: v:true,
        \   autoPopulateDiags: v:false,
        \   completionMatcher: 'case',
        \   completionMatcherValue: 1,
        \   diagSignErrorText: 'E>',
        \   diagSignHintText: 'H>',
        \   diagSignInfoText: 'I>',
        \   diagSignWarningText: 'W>',
        \   echoSignature: v:false,
        \   hideDisabledCodeActions: v:false,
        \   highlightDiagInline: v:true,
        \   hoverInPreview: v:true,
        \   ignoreMissingServer: v:false,
        \   keepFocusInDiags: v:true,
        \   keepFocusInReferences: v:true,
        \   completionTextEdit: v:true,
        \   diagVirtualTextAlign: 'above',
        \   diagVirtualTextWrap: 'default',
        \   noNewlineInCompletion: v:false,
        \   omniComplete: v:null,
        \   outlineOnRight: v:true,
        \   outlineWinSize: 20,
        \   semanticHighlight: v:true,
        \   showDiagInBalloon: v:true,
        \   showDiagInPopup: v:true,
        \   showDiagOnStatusLine: v:false,
        \   showDiagWithSign: v:true,
        \   showDiagWithVirtualText: v:true,
        \   showInlayHints: v:false,
        \   showSignature: v:true,
        \   snippetSupport: v:false,
        \   ultisnipsSupport: v:false,
        \   useBufferCompletion: v:false,
        \   usePopupInCodeAction: v:false,
        \   useQuickfixForLocations: v:false,
        \   vsnipSupport: v:false,
        \   bufferCompletionTimeout: 100,
        \   customCompletionKinds: v:false,
        \   completionKinds: {},
        \   filterCompletionDuplicates: v:false,
	\ }
autocmd User LspSetup call LspOptionsSet(lspOpts)
let lspServers = [#{
	\    name: 'clangd',
	\    filetype: ['c', 'cpp'],
	\    path: '/opt/homebrew/opt/llvm/bin/clangd',
	\    args: ['--background-index']
	\  },
    \  #{
    \    name: 'pylsp',
    \    filetype: 'python',
    \    path: '/opt/homebrew/bin/pylsp',
    \    args: []
    \  },
    \  #{
	\    name: 'rustlang',
	\    filetype: ['rust'],
	\    path: '/opt/homebrew/bin/rust-analyzer',
	\    args: [],
	\    syncInit: v:true
	\  },
    \  #{
    \   name: 'bashls',
    \   filetype: 'sh',
    \   path: '/opt/homebrew/bin/bash-language-server',
    \   args: ['start']
    \ },
    \  #{
    \   name: 'luals',
    \   filetype: 'lua',
    \   path: '/opt/homebrew/bin/lua-language-server',
    \   args: [],
    \ },
    \  #{
    \   name: 'tinymist',
    \   filetype: 'typst',
    \   path: '/Users/huangyanxing/.cargo/bin/tinymist',
    \   args: ['lsp']
    \ },
    \  #{
    \   name: 'yamlls',
    \   filetype: 'yaml',
    \   path: '/opt/homebrew/bin/yaml-language-server',
    \   args: ['--stdio'],
    \ },
    \ ]
autocmd User LspSetup call LspAddServer(lspServers)

source ~/.vim/vimcomplete.vim
