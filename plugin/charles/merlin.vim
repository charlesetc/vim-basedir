function! MerlinLocateMli()
  let l:user_merlin_locate_preference = g:merlin_locate_preference
  let g:merlin_locate_preference = 'mli'
  :MerlinLocate
  let g:merlin_locate_preference = l:user_merlin_locate_preference
endfunction
:command! MerlinLocateMli :call MerlinLocateMli()