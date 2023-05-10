let g:airline#themes#voskarch#palette = {}

function! airline#themes#voskarch#refresh()
  """"""""""""""""""""""""""""""""""""""""""""""""
  " Options
  """"""""""""""""""""""""""""""""""""""""""""""""
  let s:background           = get(g:, 'airline_voskarch_bg', &background)
  let s:use_green            = get(g:, 'airline_voskarch_normal_green', 0)
  let s:dark_inactive_tab    = get(g:, 'airline_voskarch_dark_inactive_background', 0)
  let s:dark_text            = get(g:, 'airline_voskarch_dark_text', 0)
  let s:dark_inactive_border = get(g:, 'airline_voskarch_dark_inactive_border', 0)
  let s:enable_command_color = get(g:, 'airline_voskarch_enable_command_color', 0)

  """"""""""""""""""""""""""""""""""""""""""""""""
  " Colors
  """"""""""""""""""""""""""""""""""""""""""""""""
  " Base colors
  let s:black       = {'t':   0, 'g': '#282a2e'} " 0 was quoted ('0') in original,
                                                 " but I haven't noticed any issues
                                                 " without quotes yet
  let s:darkred     = {'t':   1, 'g': '#974d39'}
  let s:darkgreen   = {'t':   2, 'g': '#677c5e'}
  let s:darkyellow  = {'t':   3, 'g': '#dbcb91'}
  let s:darkblue    = {'t':   4, 'g': '#4868a0'}
  let s:darkmagenta = {'t':   5, 'g': '#8f99ac'}
  let s:darkcyan    = {'t':   6, 'g': '#6c7c7f'}
  let s:lightgrey   = {'t':   7, 'g': '#ccd7e9'}

  let s:darkgrey    = {'t':   8, 'g': '#373b41'}
  let s:red         = {'t':   9, 'g': '#b25b43'}
  let s:green       = {'t':  10, 'g': '#9db683'}
  let s:yellow      = {'t':  11, 'g': '#ebdb82'}
  let s:blue        = {'t':  12, 'g': '#89aed1'}
  let s:violet      = {'t':  13, 'g': '#bdcae1'}
  let s:cyan        = {'t':  14, 'g': '#8a9b98'}
  let s:white       = {'t':  15, 'g': '#fdf9f6'}

  """"""""""""""""""""""""""""""""""""""""""""""""
  " Simple mappings
  " NOTE: These are easily tweakable mappings. The actual mappings get
  " the specific gui and terminal colors from the base color dicts.
  """"""""""""""""""""""""""""""""""""""""""""""""
  " Normal mode
  if s:background == 'dark'
    let s:N1 = [(s:dark_text ? s:darkgrey : s:white), (s:use_green ? s:darkgreen : s:cyan), 'bold']
    let s:N2 = [s:lightgrey, s:darkgrey, '']
    let s:N3 = [s:green, s:black, '']
  else
    let s:N1 = [(s:dark_text ? s:darkgrey : s:lightgrey), (s:use_green ? s:darkgreen : s:yellow), 'bold']
    let s:N2 = [s:lightgrey, s:cyan, '']
    let s:N3 = [s:cyan, s:lightgrey, '']
  endif
  let s:NF = [s:red, s:N3[1], '']
  let s:NW = [s:white, s:red, '']
  if s:background == 'dark'
    let s:NM = [s:cyan, s:N3[1], '']
    let s:NMi = [s:lightgrey, s:N3[1], '']
  else
    let s:NM = [s:green, s:N3[1], '']
    let s:NMi = [s:black, s:N3[1], '']
  endif

  " Insert mode
  let s:I1 = [s:N1[0], s:yellow, 'bold']
  let s:I2 = s:N2
  let s:I3 = s:N3
  let s:IF = s:NF
  let s:IM = s:NM

  " Visual mode
  let s:V1 = [s:N1[0], s:darkcyan, 'bold']
  let s:V2 = s:N2
  let s:V3 = s:N3
  let s:VF = s:NF
  let s:VM = s:NM

  " Replace mode
  let s:R1 = [s:N1[0], s:darkred, '']
  let s:R2 = s:N2
  let s:R3 = s:N3
  let s:RM = s:NM
  let s:RF = s:NF

  " Command mode
  let s:C1 = [s:N1[0], s:darkblue, '']
  let s:C2 = s:N2
  let s:C3 = s:N3
  let s:CF = s:NF
  let s:CM = s:NM

  " Inactive, according to VertSplit in voskarch
  " (bg dark: yellow; bg light: blue)
  if s:background == 'dark'
    if s:dark_inactive_border
      let s:IA = [s:green, s:black, '']
    else
      let s:IA = [s:black, s:yellow, '']
    endif
  else
    let s:IA = [s:lightgrey, s:blue, '']
  endif

  """"""""""""""""""""""""""""""""""""""""""""""""
  " Actual mappings
  " WARNING: Don't modify this section unless necessary.
  """"""""""""""""""""""""""""""""""""""""""""""""
  let s:NFa = [s:NF[0].g, s:NF[1].g, s:NF[0].t, s:NF[1].t, s:NF[2]]
  let s:IFa = [s:IF[0].g, s:IF[1].g, s:IF[0].t, s:IF[1].t, s:IF[2]]
  let s:VFa = [s:VF[0].g, s:VF[1].g, s:VF[0].t, s:VF[1].t, s:VF[2]]
  let s:RFa = [s:RF[0].g, s:RF[1].g, s:RF[0].t, s:RF[1].t, s:RF[2]]

  let g:airline#themes#voskarch#palette.accents = {
        \ 'red': s:NFa,
        \ }

  let g:airline#themes#voskarch#palette.inactive = airline#themes#generate_color_map(
        \ [s:IA[0].g, s:IA[1].g, s:IA[0].t, s:IA[1].t, s:IA[2]],
        \ [s:IA[0].g, s:IA[1].g, s:IA[0].t, s:IA[1].t, s:IA[2]],
        \ [s:IA[0].g, s:IA[1].g, s:IA[0].t, s:IA[1].t, s:IA[2]])
  let g:airline#themes#voskarch#palette.inactive_modified = {
        \ 'airline_c': [s:NMi[0].g, '', s:NMi[0].t, '', s:NMi[2]]}

  let g:airline#themes#voskarch#palette.normal = airline#themes#generate_color_map(
        \ [s:N1[0].g, s:N1[1].g, s:N1[0].t, s:N1[1].t, s:N1[2]],
        \ [s:N2[0].g, s:N2[1].g, s:N2[0].t, s:N2[1].t, s:N2[2]],
        \ [s:N3[0].g, s:N3[1].g, s:N3[0].t, s:N3[1].t, s:N3[2]])

  let g:airline#themes#voskarch#palette.normal.airline_warning = [
        \ s:NW[0].g, s:NW[1].g, s:NW[0].t, s:NW[1].t, s:NW[2]]

  let g:airline#themes#voskarch#palette.normal.airline_error = [
        \ s:NW[0].g, s:NW[1].g, s:NW[0].t, s:NW[1].t, s:NW[2]]

  let g:airline#themes#voskarch#palette.normal_modified = {
        \ 'airline_c': [s:NM[0].g, s:NM[1].g,
        \ s:NM[0].t, s:NM[1].t, s:NM[2]]}

  let g:airline#themes#voskarch#palette.normal_modified.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.insert = airline#themes#generate_color_map(
        \ [s:I1[0].g, s:I1[1].g, s:I1[0].t, s:I1[1].t, s:I1[2]],
        \ [s:I2[0].g, s:I2[1].g, s:I2[0].t, s:I2[1].t, s:I2[2]],
        \ [s:I3[0].g, s:I3[1].g, s:I3[0].t, s:I3[1].t, s:I3[2]])

  let g:airline#themes#voskarch#palette.insert.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.insert_modified = {
        \ 'airline_c': [s:IM[0].g, s:IM[1].g,
        \ s:IM[0].t, s:IM[1].t, s:IM[2]]}

  let g:airline#themes#voskarch#palette.insert_modified.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.visual = airline#themes#generate_color_map(
        \ [s:V1[0].g, s:V1[1].g, s:V1[0].t, s:V1[1].t, s:V1[2]],
        \ [s:V2[0].g, s:V2[1].g, s:V2[0].t, s:V2[1].t, s:V2[2]],
        \ [s:V3[0].g, s:V3[1].g, s:V3[0].t, s:V3[1].t, s:V3[2]])

  let g:airline#themes#voskarch#palette.visual.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.visual_modified = {
        \ 'airline_c': [s:VM[0].g, s:VM[1].g,
        \ s:VM[0].t, s:VM[1].t, s:VM[2]]}

  let g:airline#themes#voskarch#palette.visual_modified.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.replace = airline#themes#generate_color_map(
        \ [s:R1[0].g, s:R1[1].g, s:R1[0].t, s:R1[1].t, s:R1[2]],
        \ [s:R2[0].g, s:R2[1].g, s:R2[0].t, s:R2[1].t, s:R2[2]],
        \ [s:R3[0].g, s:R3[1].g, s:R3[0].t, s:R3[1].t, s:R3[2]])

  let g:airline#themes#voskarch#palette.replace.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.replace_modified = {
        \ 'airline_c': [s:RM[0].g, s:RM[1].g,
        \ s:RM[0].t, s:RM[1].t, s:RM[2]]}

  let g:airline#themes#voskarch#palette.replace_modified.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  let g:airline#themes#voskarch#palette.replace_modified.airline_warning =
        \ g:airline#themes#voskarch#palette.normal.airline_warning

  if s:enable_command_color
    let g:airline#themes#voskarch#palette.commandline = airline#themes#generate_color_map(
          \ [s:C1[0].g, s:C1[1].g, s:C1[0].t, s:C1[1].t, s:C1[2]],
          \ [s:C2[0].g, s:C2[1].g, s:C2[0].t, s:C2[1].t, s:C2[2]],
          \ [s:C3[0].g, s:C3[1].g, s:C3[0].t, s:C3[1].t, s:C3[2]])

    let g:airline#themes#voskarch#palette.commandline.airline_warning =
          \ g:airline#themes#voskarch#palette.normal.airline_warning

    let g:airline#themes#voskarch#palette.commandline_modified = {
          \ 'airline_c': [s:RM[0].g, s:RM[1].g,
          \ s:RM[0].t, s:RM[1].t, s:RM[2]]}
  endif

  let g:airline#themes#voskarch#palette.tabline = {}

  let g:airline#themes#voskarch#palette.tabline.airline_tab = [
        \ s:I2[0].g, s:I2[1].g, s:I2[0].t, (s:dark_inactive_tab ? s:I3[0].t : s:I2[1].t), s:I2[2]]

  let g:airline#themes#voskarch#palette.tabline.airline_tabtype = [
        \ s:N2[0].g, s:N2[1].g, s:N2[0].t, s:N2[1].t, s:N2[2]]
endfunction

call airline#themes#voskarch#refresh()

