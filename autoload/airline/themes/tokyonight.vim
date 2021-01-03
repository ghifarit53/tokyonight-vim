" =============================================================================
" URL: https://github.com/ghifarit53/tokyonight-vim/
" Filename: autoload/airline/themes/tokyonight.vim
" Author: Brian Gianforcaro
" Email: b.gianfo@gmail.com
" License: MIT License
" =============================================================================

let g:airline#themes#tokyonight#palette = {}

let s:style = get(g:, 'tokyonight_style', 'night')

if s:style ==# 'night'
	let s:foreground = [ '#a9b1d6', 250 ]
	let s:background = [ '#1a1b26', 235 ]
	let s:background_alt = [ '#232433', 236 ]
	let s:background_grey = [ '#444B6A', 238 ]
	let s:red = [ '#F7768E', 203 ]
	let s:yellow = [ '#E0AF68', 179 ]
	let s:green = [ '#9ECE6A', 107 ]
	let s:blue = [ '#7AA2F7', 110 ]
	let s:purple = [ '#ad8ee6', 176 ]
elseif s:style ==# 'storm'
	let s:foreground = [ '#a9b1d6', 250 ]
	let s:background = [ '#24283b', 235 ]
	let s:background_alt = [ '#2c3047', 236 ]
	let s:background_grey = [ '#444B6A', 238 ]
	let s:red = [ '#F7768E', 203 ]
	let s:yellow = [ '#E0AF68', 179 ]
	let s:green = [ '#9ECE6A', 107 ]
	let s:blue = [ '#7AA2F7', 110 ]
	let s:purple = [ '#ad8ee6', 176 ]
endif

"                                     guifg            guibg                 ctermfg          ctermbg
let s:airline_mode_normal         = [ s:background[0], s:blue[0],            s:background[1], s:blue[1]            ]
let s:airline_mode_insert         = [ s:background[0], s:green[0],           s:background[1], s:green[1]           ]
let s:airline_mode_replace        = [ s:background[0], s:yellow[0],          s:background[1], s:yellow[1]          ]
let s:airline_mode_visual         = [ s:background[0], s:purple[0],          s:background[1], s:purple[1]          ]
let s:airline_mode_inactive       = [ s:foreground[0], s:background_grey[0], s:foreground[1], s:background_grey[1] ]

let s:airline_info                = [ s:foreground[0], s:background_grey[0], s:foreground[1], s:background_grey[1] ]
let s:airline_statusline          = [ s:foreground[0], s:background_alt[0],  s:foreground[1], s:background_alt[1]  ]

function! s:tokyonight_color_map(mode)
	return airline#themes#generate_color_map(a:mode, s:airline_info, s:airline_statusline)
endfunction

let g:airline#themes#tokyonight#palette.normal = s:tokyonight_color_map(s:airline_mode_normal)
let g:airline#themes#tokyonight#palette.insert = s:tokyonight_color_map(s:airline_mode_insert)
let g:airline#themes#tokyonight#palette.replace = s:tokyonight_color_map(s:airline_mode_replace)
let g:airline#themes#tokyonight#palette.inactive = s:tokyonight_color_map(s:airline_mode_inactive)
let g:airline#themes#tokyonight#palette.visual = s:tokyonight_color_map(s:airline_mode_visual)
let g:airline#themes#tokyonight#palette.terminal = s:tokyonight_color_map(s:airline_mode_insert)
let g:airline#themes#tokyonight#palette.normal.airline_term = s:airline_statusline
let g:airline#themes#tokyonight#palette.terminal.airline_term = s:airline_statusline
let g:airline#themes#tokyonight#palette.visual.airline_term = s:airline_statusline
