let g:scnd_list = [
                \ ["&Cheatsheet", 'help index', ''],
                \ ['T&ips', 'help tips', ''],
                \ ]

function! Quickuitest()
    let t = [
                \ ["&Cheatsheet", 'help index', ''],
                \ ['T&ips', 'help tips', ''],
                \ ['--',''],
                \ ["&Tutorial", 'help tutor', ''],
                \ ['&Quick Reference', 'help quickref', ''],
                \ ['&Summary', 'help summary', ''],
                \ ['--',''],
                \ ['&Vim Script', 'help eval', ''],
                \ ['&Function List', 'help function-list', ''],
                \ ]
    return t
endfunc

let content = [
            \ ["&Help Keyword\t\\ch", 'echo 100' ],
            \ ["Search &References\t\\cr", 'call quickui#context#expand(g:scnd_list)'],
            \ ['-'],
            \ ["&Documentation\t >", 'call quickui#context#expand(
                \ [
                \ ["Search &References\t\\cr", "echo 500"],
                \ ["Search &References\t\\cr", "echo 500"],
                \ ["Search &References\t\\cr", "echo 500"],
                \])'],
            \ ["Find in &Project\t >", 'call quickui#context#expand("Quickuitest")'],
            \ ]
call quickui#context#open(content, {})
