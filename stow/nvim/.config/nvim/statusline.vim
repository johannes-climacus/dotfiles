let g:lightline = { 'colorscheme': 'seoul256' }

function! s:set_lightline_colorscheme(name) abort
  let g:lightline.colorscheme = a:name
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction

function! s:lightline_colorschemes(...) abort
  return join(map(
    \ globpath(&rtp,"autoload/lightline/colorscheme/*.vim",1,1),
    \ "fnamemodify(v:val,':t:r')"),
    \ "\n")
endfunction

command! -nargs=1 -complete=custom,s:lightline_colorschemes LightlineColorscheme
  \ call s:set_lightline_colorscheme(<q-args>)

function! s:clapon() abort
  LightlineColorscheme inkstained
  colorscheme inkstained
endfunction

command! -nargs=0 -complete=custom,s:clapoff ClapOn call s:clapon()

function! s:clapoff() abort
  LightlineColorscheme seoul256
  colorscheme seoul256
endfunction

command! -nargs=0 -complete=custom,s:clapoff ClapOff call s:clapoff()
