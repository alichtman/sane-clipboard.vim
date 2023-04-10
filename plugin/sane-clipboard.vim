" Title:        move-lines.vim
" Description:  A plugin to provide remappings for easily moving lines around
" Last Change:  09 Apr 2023
" Maintainer:   Aaron Lichtman <https://github.com/alichtman>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:sane_clipboard_plugin")
    finish
endif
let g:sane_clipboard_plugin = 1

" Enable copying to system clipboard
if uname == "Darwin"
    set clipboard=unnamed
elseif uname == "Linux"
    set clipboard=unnamedplus
endif

" Don't overwrite copy register when deleting with x or X
nnoremap x "_x
nnoremap X "_X

" vim: et ts=4 sw=4 sts=4
