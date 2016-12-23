let s:oranged = ['#D2691D', '166']
let s:orangel = ['#D8904C', '172']
let s:violetd = ['#7B50C6', '93']
let s:violetl = ['#8763D3', '99']
let s:greend = ['#67932E', '28']
let s:greenl = ['#6AA302', '34']
let s:white = ['#DADADA', '252']
let s:grey = ['#E5E0D2', '251']  " equal to base1
let s:darkgreyd = ['#8E8E8E', '247']
let s:darkgreyl = ['#C5BFBB', '250']
let s:blackd = ['#45484B', '238']  " equal to base01
let s:blackl = ['#6B6A6C', '242']

let g:airline#themes#violet#palette = {}

function! airline#themes#violet#refresh()
    let s:background  = get(g:, 'airline_violet_bg', &background)

    " [ guifg, guibg, ctermfg, ctermbg, opts ]. See "help attr-list" for valid
    " values for the "opt" value.

    " Normal Mode:
    if s:background == 'light'
        let s:N1 = [ s:white[0], s:darkgreyd[0], s:white[1], s:darkgreyd[1] ]
        let s:N2 = [ s:blackl[0], s:darkgreyl[0], s:blackl[1], s:darkgreyl[1] ]
        let s:N3 = [ s:blackl[0], s:grey[0], s:blackl[1], s:grey[1] ]
    else
        let s:N1 = [ s:blackd[0], s:darkgreyd[0], s:blackd[1], s:darkgreyd[1] ]
        let s:N2 = [ s:darkgreyl[0], s:blackl[0], s:darkgreyl[1], s:blackl[1] ]
        let s:N3 = [ s:darkgreyl[0], s:blackd[0], s:darkgreyl[1], s:blackd[1] ]
    endif

    let g:airline#themes#violet#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

    " Insert Mode:
    let s:I1 = [ s:white[0], s:violetd[0], s:white[1], s:violetd[1] ]
    let s:I2 = [ s:white[0], s:violetl[0], s:white[1], s:violetl[1] ]
    if s:background == 'light'
        let s:I3 = [ s:darkgreyd[0], s:grey[0], s:darkgreyd[1], s:grey[1] ]
    else
        let s:I3 = [ s:darkgreyd[0], s:blackd[0], s:darkgreyd[1], s:blackd[1] ]
    endif

    let g:airline#themes#violet#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

    " Replace Mode:
    let s:R1 = [ s:white[0] , s:oranged[0], s:white[1] , s:oranged[1] ]
    let s:R2 = [ s:white[0], s:orangel[0], s:white[1], s:orangel[1] ]
    if s:background == 'light'
        let s:R3 = [ s:darkgreyd[0], s:grey[0], s:darkgreyd[1], s:grey[1] ]
    else
        let s:R3 = [ s:darkgreyd[0], s:blackd[0], s:darkgreyd[1], s:blackd[1] ]
    endif

    let g:airline#themes#violet#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

    " Visual Mode:
    let s:V1 = [ s:white[0] , s:greend[0], s:white[1] , s:greend[1] ]
    let s:V2 = [ s:white[0], s:greenl[0], s:white[1], s:greenl[1] ]
    if s:background == 'light'
        let s:V3 = [ s:darkgreyd[0], s:grey[0], s:darkgreyd[1], s:grey[1] ]
    else
        let s:V3 = [ s:darkgreyd[0], s:blackd[0], s:darkgreyd[1], s:blackd[1] ]
    endif

    let g:airline#themes#violet#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

    " Inactive:
    if s:background == 'light'
        let s:IA = [ s:white[0], s:darkgreyd[0], s:white[1], s:darkgreyd[1] ]
    else
        let s:IA = [ s:darkgreyd[0], s:blackd[0], s:darkgreyd[1], s:blackd[1] ]
    endif
    let g:airline#themes#violet#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

    let g:airline#themes#violet#palette.accents = {
          \ 'red': [ '#ff0000' , '' , 160 , ''  ]
          \ }
endfunction

call airline#themes#violet#refresh()
