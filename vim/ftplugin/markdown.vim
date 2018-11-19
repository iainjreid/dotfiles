setlocal autoindent linebreak nonumber ts=4 sw=4 wrap spell

SoftPencil

let g:pencil#cursorwrap = 0
let g:pencil#textwidth = 80

" 
" Todo lists
"
nnoremap <buffer> <Space> :call TodoListToggleItem('.')<CR>
vnoremap <buffer> <Space> :call TodoListToggleItem('.')<CR>

" Toggles the targeted todo item
function! TodoListToggleItem(line_num)
  if TodoListIsNotMarkedAsDone(a:line_num) == 1
    call TodoListMarkItemAsDone(a:line_num)
  elseif TodoListIsMarkedAsDone(a:line_num) == 1
    call TodoListMarkItemAsNotDone(a:line_num)
  else
    echo "Not a Todo!"
  endif
endfunction

" Checks to see if the current line is marked as done
function! TodoListIsMarkedAsDone(line_num)
  let l:line = getline(a:line_num)

  if match(l:line, '[x\]') != -1
    return 1
  else
    return 0
  endif
endfunction

" Checks to see if the currnet line is marked as not done
function! TodoListIsNotMarkedAsDone(line_num)
  let l:line = getline(a:line_num)
  
  if match(l:line, '[ \]') != -1
    return 1
  else
    return 0
  endif
endfunction

" Marks the current line as done
function! TodoListMarkItemAsDone(line_num)
  let l:line = getline(a:line_num)
  call setline(a:line_num, substitute(l:line, '\[ \]', '[x]', ''))
endfunction

" Marks the current line as done
function! TodoListMarkItemAsNotDone(line_num)
  let l:line = getline(a:line_num)
  call setline(a:line_num, substitute(l:line, '\[x\]', '[ ]', ''))
endfunction

