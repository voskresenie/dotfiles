" voskarch.vim - Vim color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   David Anderson (https://voc.is)
" Version:  0.0.1
" --------------------------------------------------------------

" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "voskarch"

"}}}
" Vim UI {{{
"          Normal                cleared
hi         Cursor                ctermfg=7           ctermbg=1
hi         CursorLine                                            cterm=underline
hi!  link  CursorLineSign        SignColumn
hi!  link  CursorLineFold        FoldColumn
hi         MatchParen                                ctermbg=6
hi         Pmenu                 ctermfg=0           ctermbg=13
hi         PmenuThumb                                ctermbg=15
hi         PmenuSbar                                 ctermbg=7
hi         PmenuSel              ctermfg=8           ctermbg=0
hi         ColorColumn           ctermfg=7           ctermbg=9
hi         SpellBad                                  ctermbg=9
hi         SpellCap                                  ctermbg=12
hi         SpellRare                                 ctermbg=13
hi         SpellLocal                                ctermbg=14
hi         NonText               ctermfg=12
hi!  link  EndOfBuffer           NonText
hi         LineNr                ctermfg=11
hi!  link  LineNrAbove           LineNr
hi!  link  LineNrBelow           LineNr
hi         CursorLineNr          ctermfg=11                      cterm=underline
hi         Visual                                    ctermbg=8
hi         IncSearch                                             cterm=reverse
hi         Search                ctermfg=0           ctermbg=11
hi!  link  QuickFixLine          Search
hi!  link  Substitute            Search
hi         StatusLine                                            cterm=bold,reverse
hi         StatusLineNC                                          cterm=reverse
hi!  link  VertSplit             Normal
hi!  link  WinSeparator          VertSplit
hi         TabLine               ctermfg=15          ctermbg=8   cterm=underline
hi         TabLineSel                                            cterm=bold
hi!  link  Whitespace            NonText
hi!  link  NormalFloat           Pmenu
hi!  link  FloatBorder           WinSeparator
hi         Folded                ctermfg=14          ctermbg=8
hi         Conceal               ctermfg=7           ctermbg=8
hi         Directory             ctermfg=14
hi         Title                 ctermfg=13
hi!  link  MsgSeparator          StatusLine
hi         ErrorMsg              ctermfg=15          ctermbg=1
hi         DiffAdd                                   ctermbg=4
hi         DiffChange                                ctermbg=5
hi         DiffDelete            ctermfg=12          ctermbg=6
hi         DiffText                                  ctermbg=9   cterm=bold
"          User1                 TODO
"          User2                 TODO
"          User3                 TODO
"          User4                 TODO
"          User5                 TODO
"          User6                 TODO
"          User7                 TODO
"          User8                 TODO
"          User9                 TODO
hi         CursorColumn                              ctermbg=8
hi         SignColumn            ctermfg=14          ctermbg=8
hi         WildMenu              ctermfg=0           ctermbg=11
hi         FoldColumn            ctermfg=14          ctermbg=8
hi         WarningMsg            ctermfg=9
hi         MoreMsg               ctermfg=10
hi         Question              ctermfg=10
hi         ModeMsg                                               cterm=bold
hi         TabLineFill                                           cterm=reverse
hi         SpecialKey            ctermfg=14
hi         TermCursor                                            cterm=reverse
"          TermCursorNC          cleared
"          CurSearch             cleared
"          VisualNC              cleared
"          NormalNC              cleared
hi         WinBar                                                cterm=bold
hi!  link  WinBarNC              WinBar
"          lCursor
hi         FloatShadow                                           blend=80
hi         FloatShadowThrough                                    blend=100
hi         RedrawDebugNormal                                     cterm=reverse
hi         RedrawDebugClear                          ctermbg=11
hi         RedrawDebugComposed                       ctermbg=10
hi         RedrawDebugRecompose                      ctermbg=9
"          MsgArea               cleared

"}}}

" Generic syntax {{{
hi!  link  Delimiter        Special
hi         Comment          ctermfg=14
hi!  link  SpecialComment   Special
hi         Underlined       cterm=underline  ctermfg=12
hi!  link  Label            Statement
hi!  link  Tag              Special
hi!  link  Keyword          Statement
hi         PreProc          ctermfg=7
hi!  link  Include          PreProc
hi!  link  Macro            PreProc
hi!  link  PreCondit        PreProc
hi!  link  Define           PreProc
hi         Type             ctermfg=10
hi!  link  Typedef          Type
hi         Constant         ctermfg=13
hi!  link  Boolean          Constant
hi!  link  Number           Constant
hi!  link  Float            Number
hi!  link  Character        Constant
hi!  link  SpecialChar      Special
hi!  link  String           Constant
hi!  link  Structure        Type
hi!  link  StorageClass     Type
hi         Todo             ctermfg=0        ctermbg=11
hi!  link  Function         Identifier
hi         Identifier       cterm=bold       ctermfg=12
hi         Statement        ctermfg=11
hi!  link  Repeat           Statement
hi         Special          ctermfg=3
hi         Ignore           ctermfg=0
hi!  link  Conditional      Statement
hi!  link  Operator         Statement
hi!  link  Debug            Special
hi         Error            ctermfg=15       ctermbg=9
hi!  link  Exception        Statement

"}}}
" HTML {{{














"}}}
" XML {{{







"}}}
" JavaScript {{{



"}}}
" PHP {{{







"}}}
" Markdown {{{













"}}}
" Ruby {{{






"}}}
" Git {{{










"}}}
" Vim {{{




"}}}
" LESS {{{



"}}}
" NERDTree {{{



"}}}
" Vimwiki {{{





"}}}
" Help {{{







"}}}
" CtrlP {{{
hi  CtrlPwhite     ctermfg=15  ctermbg=3   cterm=bold
hi  CtrlPlight     ctermfg=7   ctermbg=11
hi  CtrlPdark      ctermfg=10  ctermbg=0
hi  CtrlParrow1    ctermfg=11  ctermbg=3
hi  CtrlParrow2    ctermfg=3   ctermbg=11
hi  CtrlParrow3    ctermfg=11  ctermbg=0

"}}}
" Mustache {{{






"}}}
" Shell {{{



"}}}
" Syntastic {{{





"}}}
" Netrw {{{



"}}}
" Ledger {{{




"}}}
" Diff {{{





"}}}
" Plug {{{


"}}}
" Blade {{{




"}}}

" vim: fdm=marker:sw=2:sts=2:et

" Neovim {{{
hi       NvimInternalError                       ctermfg=9     ctermbg=9
hi! link NvimAssignment                          Operator
hi! link NvimPlainAssignment                     NvimAssignment
hi! link NvimAugmentedAssignment                 NvimAssignment
hi! link NvimAssignmentWithAddition              NvimAugmentedAssignment
hi! link NvimAssignmentWithSubtraction           NvimAugmentedAssignment
hi! link NvimAssignmentWithConcatenation         NvimAugmentedAssignment
hi! link NvimOperator                            Operator
hi! link NvimUnaryOperator                       NvimOperator
hi! link NvimUnaryPlus                           NvimUnaryOperator
hi! link NvimUnaryMinus                          NvimUnaryOperator
hi! link NvimNot                                 NvimUnaryOperator
hi! link NvimBinaryOperator                      NvimOperator
hi! link NvimComparison                          NvimBinaryOperator
hi! link NvimComparisonModifier                  NvimComparison
hi! link NvimBinaryPlus                          NvimBinaryOperator
hi! link NvimBinaryMinus                         NvimBinaryOperator
hi! link NvimConcat                              NvimBinaryOperator
hi! link NvimConcatOrSubscript                   NvimConcat
hi! link NvimOr                                  NvimBinaryOperator
hi! link NvimAnd                                 NvimBinaryOperator
hi! link NvimMultiplication                      NvimBinaryOperator
hi! link NvimDivision                            NvimBinaryOperator
hi! link NvimMod                                 NvimBinaryOperator
hi! link NvimTernary                             NvimOperator
hi! link NvimTernaryColon                        NvimTernary
hi! link NvimParenthesis                         Delimiter
hi! link NvimLambda                              NvimParenthesis
hi! link NvimNestingParenthesis                  NvimParenthesis
hi! link NvimCallingParenthesis                  NvimParenthesis
hi! link NvimSubscript                           NvimParenthesis
hi! link NvimSubscriptBracket                    NvimSubscript
hi! link NvimSubscriptColon                      NvimSubscript
hi! link NvimCurly                               NvimSubscript
hi! link NvimContainer                           NvimParenthesis
hi! link NvimDict                                NvimContainer
hi! link NvimList                                NvimContainer
hi! link NvimIdentifier                          Identifier
hi! link NvimIdentifierScope                     NvimIdentifier
hi! link NvimIdentifierScopeDelimiter            NvimIdentifier
hi! link NvimIdentifierName                      NvimIdentifier
hi! link NvimIdentifierKey                       NvimIdentifier
hi! link NvimColon                               Delimiter
hi! link NvimComma                               Delimiter
hi! link NvimArrow                               Delimiter
hi! link NvimRegister                            SpecialChar
hi! link NvimNumber                              Number
hi! link NvimFloat                               NvimNumber
hi! link NvimNumberPrefix                        Type
hi! link NvimOptionSigil                         Type
hi! link NvimOptionName                          NvimIdentifier
hi! link NvimOptionScope                         NvimIdentifierScope
hi! link NvimOptionScopeDelimiter                NvimIdentifierScopeDelimiter
hi! link NvimEnvironmentSigil                    NvimOptionSigil
hi! link NvimEnvironmentName                     NvimIdentifier
hi! link NvimString                              String
hi! link NvimStringBody                          NvimString
hi! link NvimStringQuote                         NvimString
hi! link NvimStringSpecial                       SpecialChar
hi! link NvimSingleQuote                         NvimStringQuote
hi! link NvimSingleQuotedBody                    NvimStringBody
hi! link NvimSingleQuotedQuote                   NvimStringSpecial
hi! link NvimDoubleQuote                         NvimStringQuote
hi! link NvimDoubleQuotedBody                    NvimStringBody
hi! link NvimDoubleQuotedEscape                  NvimStringSpecial
hi! link NvimFigureBrace                         NvimInternalError
hi! link NvimSingleQuotedUnknownEscape           NvimInternalError
hi! link NvimSpacing                             Normal
hi! link NvimInvalidSingleQuotedUnknownEscape    NvimInternalError
hi! link NvimInvalid                             Error
hi! link NvimInvalidAssignment                   NvimInvalid
hi! link NvimInvalidPlainAssignment              NvimInvalidAssignment
hi! link NvimInvalidAugmentedAssignment          NvimInvalidAssignment
hi! link NvimInvalidAssignmentWithAddition       NvimInvalidAugmentedAssignment
hi! link NvimInvalidAssignmentWithSubtraction    NvimInvalidAugmentedAssignment
hi! link NvimInvalidAssignmentWithConcatenation  NvimInvalidAugmentedAssignment
hi! link NvimInvalidOperator                     NvimInvalid
hi! link NvimInvalidUnaryOperator                NvimInvalidOperator
hi! link NvimInvalidUnaryPlus                    NvimInvalidUnaryOperator
hi! link NvimInvalidUnaryMinus                   NvimInvalidUnaryOperator
hi! link NvimInvalidNot                          NvimInvalidUnaryOperator
hi! link NvimInvalidBinaryOperator               NvimInvalidOperator
hi! link NvimInvalidComparison                   NvimInvalidBinaryOperator
hi! link NvimInvalidComparisonModifier           NvimInvalidComparison
hi! link NvimInvalidBinaryPlus                   NvimInvalidBinaryOperator
hi! link NvimInvalidBinaryMinus                  NvimInvalidBinaryOperator
hi! link NvimInvalidConcat                       NvimInvalidBinaryOperator
hi! link NvimInvalidConcatOrSubscript            NvimInvalidConcat
hi! link NvimInvalidOr                           NvimInvalidBinaryOperator
hi! link NvimInvalidAnd                          NvimInvalidBinaryOperator
hi! link NvimInvalidMultiplication               NvimInvalidBinaryOperator
hi! link NvimInvalidDivision                     NvimInvalidBinaryOperator
hi! link NvimInvalidMod                          NvimInvalidBinaryOperator
hi! link NvimInvalidTernary                      NvimInvalidOperator
hi! link NvimInvalidTernaryColon                 NvimInvalidTernary
hi! link NvimInvalidDelimiter                    NvimInvalid
hi! link NvimInvalidParenthesis                  NvimInvalidDelimiter
hi! link NvimInvalidLambda                       NvimInvalidParenthesis
hi! link NvimInvalidNestingParenthesis           NvimInvalidParenthesis
hi! link NvimInvalidCallingParenthesis           NvimInvalidParenthesis
hi! link NvimInvalidSubscript                    NvimInvalidParenthesis
hi! link NvimInvalidSubscriptBracket             NvimInvalidSubscript
hi! link NvimInvalidSubscriptColon               NvimInvalidSubscript
hi! link NvimInvalidCurly                        NvimInvalidSubscript
hi! link NvimInvalidContainer                    NvimInvalidParenthesis
hi! link NvimInvalidDict                         NvimInvalidContainer
hi! link NvimInvalidList                         NvimInvalidContainer
hi! link NvimInvalidValue                        NvimInvalid
hi! link NvimInvalidIdentifier                   NvimInvalidValue
hi! link NvimInvalidIdentifierScope              NvimInvalidIdentifier
hi! link NvimInvalidIdentifierScopeDelimiter     NvimInvalidIdentifier
hi! link NvimInvalidIdentifierName               NvimInvalidIdentifier
hi! link NvimInvalidIdentifierKey                NvimInvalidIdentifier
hi! link NvimInvalidColon                        NvimInvalidDelimiter
hi! link NvimInvalidComma                        NvimInvalidDelimiter
hi! link NvimInvalidArrow                        NvimInvalidDelimiter
hi! link NvimInvalidRegister                     NvimInvalidValue
hi! link NvimInvalidNumber                       NvimInvalidValue
hi! link NvimInvalidFloat                        NvimInvalidNumber
hi! link NvimInvalidNumberPrefix                 NvimInvalidNumber
hi! link NvimInvalidOptionSigil                  NvimInvalidIdentifier
hi! link NvimInvalidOptionName                   NvimInvalidIdentifier
hi! link NvimInvalidOptionScope                  NvimInvalidIdentifierScope
hi! link NvimInvalidOptionScopeDelimiter         NvimInvalidIdentifierScopeDelimiter
hi! link NvimInvalidEnvironmentSigil             NvimInvalidOptionSigil
hi! link NvimInvalidEnvironmentName              NvimInvalidIdentifier
hi! link NvimInvalidString                       NvimInvalidValue
hi! link NvimInvalidStringBody                   NvimStringBody
hi! link NvimInvalidStringQuote                  NvimInvalidString
hi! link NvimInvalidStringSpecial                NvimStringSpecial
hi! link NvimInvalidSingleQuote                  NvimInvalidStringQuote
hi! link NvimInvalidSingleQuotedBody             NvimInvalidStringBody
hi! link NvimInvalidSingleQuotedQuote            NvimInvalidStringSpecial
hi! link NvimInvalidDoubleQuote                  NvimInvalidStringQuote
hi! link NvimInvalidDoubleQuotedBody             NvimInvalidStringBody
hi! link NvimInvalidDoubleQuotedEscape           NvimInvalidStringSpecial
hi! link NvimInvalidDoubleQuotedUnknownEscape    NvimInvalidValue
hi! link NvimInvalidFigureBrace                  NvimInvalidDelimiter
hi! link NvimInvalidSpacing                      ErrorMsg
hi! link NvimDoubleQuotedUnknownEscape           NvimInvalidValue

"}}}
" Diagnostic {{{
hi        DiagnosticError             ctermfg=1
hi        DiagnosticWarn              ctermfg=3
hi        DiagnosticInfo              ctermfg=4
hi        DiagnosticHint              ctermfg=7
hi        DiagnosticUnderlineError                     cterm=underline
hi        DiagnosticUnderlineWarn                      cterm=underline
hi        DiagnosticUnderlineInfo                      cterm=underline
hi        DiagnosticUnderlineHint                      cterm=underline
hi! link  DiagnosticVirtualTextError  DiagnosticError
hi! link  DiagnosticVirtualTextWarn   DiagnosticWarn
hi! link  DiagnosticVirtualTextInfo   DiagnosticInfo
hi! link  DiagnosticVirtualTextHint   DiagnosticHint
hi! link  DiagnosticFloatingError     DiagnosticError
hi! link  DiagnosticFloatingWarn      DiagnosticWarn
hi! link  DiagnosticFloatingInfo      DiagnosticInfo
hi! link  DiagnosticFloatingHint      DiagnosticHint
hi! link  DiagnosticSignError         DiagnosticError
hi! link  DiagnosticSignWarn          DiagnosticWarn
hi! link  DiagnosticSignInfo          DiagnosticInfo
hi! link  DiagnosticSignHint          DiagnosticHint

"}}}
" @ {{{
" hi       @text                                   cleared
hi! link @text.literal             Comment
hi! link @text.reference           Identifier
hi! link @text.title               Title
hi! link @text.uri                 Underlined
hi! link @text.underline           Underlined
hi! link @text.todo                Todo
hi! link @comment                  Comment
hi! link @punctuation              Delimiter
hi! link @constant                 Constant
hi! link @constant.builtin         Special
hi! link @constant.macro           Define
hi! link @define                   Define
hi! link @macro                    Macro
hi! link @string                   String
hi! link @string.escape            SpecialChar
hi! link @string.special           SpecialChar
hi! link @character                Character
hi! link @character.special        SpecialChar
hi! link @number                   Number
hi! link @boolean                  Boolean
hi! link @float                    Float
hi! link @function                 Function
hi! link @function.builtin         Special
hi! link @function.macro           Macro
hi! link @parameter                Identifier
hi! link @method                   Function
hi! link @field                    Identifier
hi! link @property                 Identifier
hi! link @constructor              Special
hi! link @conditional              Conditional
hi! link @repeat                   Repeat
hi! link @label                    Label
hi! link @operator                 Operator
hi! link @keyword                  Keyword
hi! link @exception                Exception
hi! link @variable                 Identifier
hi! link @type                     Type
hi! link @type.definition          Typedef
hi! link @storageclass             StorageClass
hi! link @structure                Structure
hi! link @namespace                Identifier
hi! link @include                  Include
hi! link @preproc                  PreProc
hi! link @debug                    Debug
hi! link @tag                      Tag

"}}}
" airline {{{
hi  airline_x_inactive             ctermfg=0    ctermbg=11
hi  airline_x_inactive_bold        ctermfg=0    ctermbg=11  cterm=bold
hi  airline_x_inactive_red         ctermfg=9    ctermbg=11
hi  airline_y_inactive             ctermfg=0    ctermbg=11
hi  airline_y_inactive_bold        ctermfg=0    ctermbg=11  cterm=bold
hi  airline_y_inactive_red         ctermfg=9    ctermbg=11
hi  airline_z_inactive             ctermfg=0    ctermbg=11
hi  airline_z_inactive_bold        ctermfg=0    ctermbg=11  cterm=bold
hi  airline_z_inactive_red         ctermfg=9    ctermbg=11
hi  airline_term_inactive          ctermfg=10   ctermbg=0
hi  airline_term_inactive_bold     ctermfg=10   ctermbg=0   cterm=bold
hi  airline_term_inactive_red      ctermfg=9    ctermbg=0
hi  airline_error_inactive         ctermfg=0    ctermbg=1
hi  airline_error_inactive_bold    ctermfg=0    ctermbg=1   cterm=bold
hi  airline_error_inactive_red     ctermfg=9    ctermbg=1
hi  airline_a_inactive             ctermfg=0    ctermbg=11
hi  airline_a_inactive_bold        ctermfg=0    ctermbg=11  cterm=bold
hi  airline_a_inactive_red         ctermfg=9    ctermbg=11
hi  airline_b_inactive             ctermfg=0    ctermbg=11
hi  airline_b_inactive_bold        ctermfg=0    ctermbg=11  cterm=bold
hi  airline_b_inactive_red         ctermfg=9    ctermbg=11
hi  airline_c_inactive             ctermfg=0    ctermbg=11
hi  airline_c_inactive_bold        ctermfg=0    ctermbg=11  cterm=bold
hi  airline_c_inactive_red         ctermfg=9    ctermbg=11
hi  airline_warning_inactive       ctermfg=0    ctermbg=3
hi  airline_warning_inactive_bold  ctermfg=0    ctermbg=3   cterm=bold
hi  airline_warning_inactive_red   ctermfg=9    ctermbg=3
hi  airline_x                      ctermfg=10   ctermbg=0
hi  airline_x_bold                 ctermfg=10   ctermbg=0   cterm=bold
hi  airline_x_red                  ctermfg=9    ctermbg=0
hi  airline_y                      ctermfg=8    ctermbg=11
hi  airline_y_bold                 ctermfg=8    ctermbg=11  cterm=bold
hi  airline_y_red                  ctermfg=9    ctermbg=11
hi  airline_z                      ctermfg=15   ctermbg=14
hi  airline_z_bold                 ctermfg=15   ctermbg=14  cterm=bold
hi  airline_z_red                  ctermfg=9    ctermbg=14
hi  airline_term                   ctermfg=10   ctermbg=0
hi  airline_term_bold              ctermfg=10   ctermbg=0   cterm=bold
hi  airline_term_red               ctermfg=9    ctermbg=0
hi  airline_error                  ctermfg=15   ctermbg=9
hi  airline_error_bold             ctermfg=15   ctermbg=9   cterm=bold
hi  airline_error_red              ctermfg=9    ctermbg=9
hi  airline_a                      ctermfg=15   ctermbg=14  cterm=bold
hi  airline_a_bold                 ctermfg=15   ctermbg=14  cterm=bold
hi  airline_a_red                  ctermfg=9    ctermbg=14
hi  airline_b                      ctermfg=8    ctermbg=11
hi  airline_b_bold                 ctermfg=8    ctermbg=11  cterm=bold
hi  airline_b_red                  ctermfg=9    ctermbg=11
hi  airline_c                      ctermfg=10   ctermbg=0
hi  airline_c_bold                 ctermfg=10   ctermbg=0   cterm=bold
hi  airline_c_red                  ctermfg=9    ctermbg=0
hi  airline_warning                ctermfg=15   ctermbg=9
hi  airline_warning_bold           ctermfg=15   ctermbg=9   cterm=bold
hi  airline_warning_red            ctermfg=9    ctermbg=9
hi  airline_a_to_airline_b         ctermfg=8    ctermbg=11
hi  airline_b_to_airline_c         ctermfg=11   ctermbg=0
hi  airline_c_to_airline_x         ctermfg=0    ctermbg=0
hi  airline_x_to_airline_y         ctermfg=11   ctermbg=0
hi  airline_y_to_airline_z         ctermfg=8    ctermbg=11
hi  airline_z_to_airline_warning   ctermfg=9    ctermbg=14
hi  airline_c1_inactive            ctermfg=0    ctermbg=11

"}}}
