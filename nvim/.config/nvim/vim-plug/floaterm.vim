let g:floaterm_keymap_toggle = '<C-j>'
let g:floaterm_rootmarkers = ['.project', '.git', '.hg', '.svn', '.root', '.gitignore', 'package.json', 'go.mod']
nnoremap <silent> <F12> :FloatermNew! cd %:p:h<CR>
nnoremap <silent> <leader>lg :FloatermNew --autoclose=2 --height=0.9 --width=0.9 --cwd=<buffer> lazygit<CR>
nnoremap <silent> <leader>tt :FloatermNew! --autoclose=2 --height=0.9 --width=0.9 --cwd=<buffer> cd %:p:h<CR>
nnoremap <silent> <leader>ch :FloatermNew --autoclose=0 --height=0.9 --width=0.9 --cwd=<buffer> cht.sh<CR>
