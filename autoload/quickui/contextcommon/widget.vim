"----------------------------------------------------------------------
" context widget class
"----------------------------------------------------------------------
let s:AbstractContextWidget = quickui#widget#create()

"----------------------------------------------------------------------
" widget factory
"----------------------------------------------------------------------
let s:WidgetFactory = {}
function! s:WidgetFactory.create_vim_widget() abort
endfunc
function! s:WidgetFactory.create_nvim_widget() abort
endfunc

"----------------------------------------------------------------------
" context menu widget factory
"----------------------------------------------------------------------
let s:ContextMenuFactory = deepcopy(s:WidgetFactory)
" override
function! s:ContextMenuFactory.create_vim_widget() abort
    let cm = deepcopy(s:AbstractContextWidget)
    let cm.name = "context menu"
    return cm
endfunc
function! s:ContextMenuFactory.create_nvim_widget() abort
endfunc
