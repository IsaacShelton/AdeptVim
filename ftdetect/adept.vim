
autocmd! BufNewFile,BufRead *.adept
    \ let pat = '^\s*pragma \+=>.*$' |
    \ if getline(1) =~ pat || getline(2) =~ pat || getline(3) =~ pat |
    \     set filetype=adept3 |
    \ else |
    \     set filetype=adept |
    \ endif

autocmd! BufNewFile,BufRead *.adept3
    \ set filetype=adept3 |
