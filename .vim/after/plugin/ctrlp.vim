

let re_ignore='^.*[\/](dist)[\/].*$'

" use git tools if available
if isdirectory('.git')
    set grepprg="git grep"
endif

let g:ctrlp_user_command = {
  \   'types': {
  \     1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
  \     2: ['.hg', 'hg --cwd %s locate -I .'], },
  \   'fallback': 'find %s -type f'
  \ }

" disable caching
let g:ctrlp_use_caching = 0

" custom ignore
let g:ctrlp_custom_ignore = '\v(^[\/]\.(git|hg|svn)\/.*$|.*\/target\/.*)'
