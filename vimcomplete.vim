vim9script
g:vimcomplete_tab_enable = 1
g:vimcomplete_noname_buf_enable = v:false
var options = {
    completor: { shuffleEqualPriority: true, postfixHighlight: true },
    buffer: { enable: true, priority: 12, urlComplete: true, envComplete: true },
    abbrev: { enable: true, priority: 11 },
    lsp: { enable: true, priority: 29, maxCount: 11 },
    vimscript: { enable: true, priority: 13 },
}
autocmd VimEnter * g:VimCompleteOptionsSet(options)
