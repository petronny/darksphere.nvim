vim.cmd.highlight('clear')
vim.g.colors_name = 'darksphere'

local hi = function(name, val)
  -- Force links
  val.force = true

  -- Make sure that `cterm` attribute is not populated from `gui`
  val.cterm = val.cterm or {} ---@type vim.api.keyset.highlight

  -- Define global highlight
  vim.api.nvim_set_hl(0, name, val)
end

--stylua: ignore start
-- General
hi('Normal', { fg = '#d6d6dd', bg = '#181818' }) -- editor.foreground/editor.background

hi('Conceal',      { fg = '#d6d6dd', bg = '#181818' }) -- editor.foreground/editor.background
hi('Cursor',       { fg = '#181818', bg = '#d6d6dd' }) -- editorCursor.background/editorCursor.foreground
hi('lCursor',      { fg = '#181818', bg = '#d6d6dd' }) -- editorCursor.background/editorCursor.foreground
hi('DiffText',     { bg = '#e5b95c', bold = true }) -- editorGutter.modifiedBackground
hi('ErrorMsg',     { fg = '#ffffff', bg = '#f14c4c' }) -- errorForeground/editorError.foreground
hi('IncSearch',    { bg = '#163764', fg = '#d6d6dd', reverse = false }) -- editor.findMatchBackground/editor.foreground
hi('ModeMsg',      { fg = '#d6d6dd', bold = true }) -- editor.foreground
hi('NonText',      { fg = '#7a797a', bold = true }) -- activityBar.inactiveForeground
hi('PmenuSbar',    { bg = '#383838' }) -- dropdown.border
hi('StatusLine',   { fg = '#d6d6dd', bg = '#181818', bold = true }) -- statusBar.foreground/statusBar.background
hi('StatusLineNC', { fg = '#7a797a', bg = '#181818' }) -- statusBar.noFolderForeground/statusBar.background
hi('TabLineFill',  { bg = '#292929' }) -- tab.inactiveBackground
hi('TabLineSel',   { fg = '#d6d6dd', bg = '#181818', bold = true }) -- tab.activeForeground/tab.activeBackground
hi('TermCursor',   { fg = '#d6d6dd', bg = '#5b51ec' }) -- terminalCursor.foreground/terminalCursor.background
hi('WinBar',       { fg = '#d6d6dd', bg = '#181818', bold = true }) -- titleBar.activeForeground/titleBar.activeBackground
hi('WildMenu',     { fg = '#181818', bg = '#e5b95c' }) -- selection.background

hi('VertSplit',      { fg = '#383838', bg = '#181818' }) -- activityBar.border/editor.background
hi('WinSeparator',   { fg = '#383838', bg = '#181818' }) -- activityBar.border/editor.background
hi('WinBarNC',       { link = 'WinBar' }) -- same as WinBar
hi('DiffTextAdd',    { link = 'DiffText' }) -- same as DiffText
hi('EndOfBuffer',    { link = 'NonText' }) -- same as NonText
hi('LineNrAbove',    { link = 'LineNr' }) -- same as LineNr
hi('LineNrBelow',    { link = 'LineNr' }) -- same as LineNr
hi('QuickFixLine',   { bg = '#163761', fg = '#d6d6dd', bold = true }) -- selection.background/editor.foreground
hi('CursorLineSign', { link = 'SignColumn' }) -- same as SignColumn
hi('CursorLineFold', { link = 'FoldColumn' }) -- same as FoldColumn
hi('CurSearch',      { bg = '#163764', fg = '#d6d6dd', bold = true }) -- editor.findMatchBackground/editor.foreground
hi('PmenuKind',      { link = 'Pmenu' }) -- same as Pmenu
hi('PmenuMatch',     { link = 'Pmenu' }) -- same as Pmenu
hi('PmenuExtra',     { link = 'Pmenu' }) -- same as Pmenu
hi('PmenuKindSel',   { link = 'PmenuSel' }) -- same as PmenuSel
hi('PmenuMatchSel',  { link = 'PmenuSel' }) -- same as PmenuSel
hi('PmenuExtraSel',  { link = 'PmenuSel' }) -- same as PmenuSel
hi('ComplMatchIns',  {}) -- no highlight
hi('Substitute',     { bg = '#163761', fg = '#d6d6dd', bold = true }) -- selection.background/editor.foreground
hi('Whitespace',     { fg = '#737373' }) -- editorWhitespace.foreground
hi('MsgSeparator',   { link = 'StatusLine' }) -- same as StatusLine
hi('NormalFloat',    { fg = '#d6d6dd', bg = '#1d1d1d' }) -- dropdown.foreground/dropdown.background
hi('FloatBorder',    { fg = '#383838', bg = '#1d1d1d' }) -- dropdown.border/dropdown.background
hi('FloatTitle',     { link = 'Title' }) -- same as Title
hi('FloatFooter',    { link = 'Title' }) -- same as Title

hi('FloatShadow',          { bg = '#000000', blend = 80 }) -- widget.shadow
hi('FloatShadowThrough',   { bg = '#000000', blend = 100 }) -- widget.shadow
hi('RedrawDebugNormal',    { reverse = true,             cterm = { reverse = true } }) -- debug
hi('RedrawDebugClear',     { bg = 'yellow',              ctermbg = 'yellow' }) -- debug
hi('RedrawDebugComposed',  { bg = 'green',               ctermbg = 'green' }) -- debug
hi('RedrawDebugRecompose', { bg = 'red',                 ctermbg = 'red' }) -- debug
hi('Error',                { fg = '#f14c4c', bg = '#181818', ctermfg = 'red', ctermbg = 'black' }) -- editorError.foreground/editor.background
hi('Todo',                 { fg = '#f8c762', bg = '#181818', bold = true, ctermfg = 'yellow', ctermbg = 'black' }) -- markup.bold/editor.background

hi('String',         { fg = '#e394dc' }) -- string
hi('Character',      { fg = '#aaa0fa' }) -- constant.character
hi('Number',         { fg = '#ebc88d' }) -- constant.numeric
hi('Boolean',        { fg = '#82d2ce' }) -- constant.language.true/false
hi('Float',          { fg = '#ebc88d' }) -- constant.numeric.float
hi('Function',       { fg = '#efb080' }) -- support.function/entity.name.function
hi('Conditional',    { fg = '#83d6c5' }) -- keyword.control.conditional
hi('Repeat',         { fg = '#83d6c5' }) -- keyword.control.repeat
hi('Label',          { fg = '#efb080' }) -- entity.name.label
hi('Operator',       { fg = '#d6d6dd' }) -- keyword.operator
hi('Keyword',        { fg = '#83d6c5' }) -- keyword
hi('Exception',      { fg = '#83d6c5' }) -- keyword.control.exception
hi('Include',        { fg = '#a8cc7c' }) -- keyword.control.directive.include
hi('Define',         { fg = '#a8cc7c' }) -- keyword.control.directive
hi('Macro',          { fg = '#a8cc7c' }) -- keyword.control.directive
hi('PreCondit',      { fg = '#a8cc7c' }) -- keyword.control.directive
hi('StorageClass',   { fg = '#82d2ce' }) -- storage
hi('Structure',      { fg = '#efb080' }) -- storage.type
hi('Typedef',        { fg = '#efb080' }) -- storage.type
hi('Tag',            { fg = '#fad075' }) -- meta.tag
hi('SpecialChar',    { fg = '#d6d6dd' }) -- constant.character.escape
hi('Delimiter',      { fg = '#d6d6dd' }) -- punctuation.separator.delimiter
hi('SpecialComment', { fg = '#6d6d6d', italic = true }) -- comment markup.link
hi('Debug',          { fg = '#83d6c5' }) -- token.debug-token

hi('DiagnosticError',            { fg = '#f14c4c', ctermfg = 1 }) -- editorError.foreground
hi('DiagnosticWarn',             { fg = '#ea7620', ctermfg = 3 }) -- editorWarning.foreground
hi('DiagnosticInfo',             { fg = '#228df2', ctermfg = 4 }) -- editorInfo.foreground
hi('DiagnosticHint',             { fg = '#d6d6dd', ctermfg = 7 }) -- editor.foreground
hi('DiagnosticOk',               { fg = '#15ac91', ctermfg = 10 }) -- editorGutter.addedBackground
hi('DiagnosticUnderlineError',   { sp = '#f14c4c', underline = true, cterm = { underline = true } }) -- editorError.foreground underline
hi('DiagnosticUnderlineWarn',    { sp = '#ea7620', underline = true, cterm = { underline = true } }) -- editorWarning.foreground underline
hi('DiagnosticUnderlineInfo',    { sp = '#228df2', underline = true, cterm = { underline = true } }) -- editorInfo.foreground underline
hi('DiagnosticUnderlineHint',    { sp = '#d6d6dd', underline = true, cterm = { underline = true } }) -- editor.foreground underline
hi('DiagnosticUnderlineOk',      { sp = '#15ac91', underline = true, cterm = { underline = true } }) -- editorGutter.addedBackground underline
hi('DiagnosticVirtualTextError', { fg = '#f14c4c', bg = '#181818' }) -- editorError.foreground/editor.background
hi('DiagnosticVirtualTextWarn',  { fg = '#ea7620', bg = '#181818' }) -- editorWarning.foreground/editor.background
hi('DiagnosticVirtualTextInfo',  { fg = '#228df2', bg = '#181818' }) -- editorInfo.foreground/editor.background
hi('DiagnosticVirtualTextHint',  { fg = '#d6d6dd', bg = '#181818' }) -- editor.foreground/editor.background
hi('DiagnosticVirtualTextOk',    { fg = '#15ac91', bg = '#181818' }) -- editorGutter.addedBackground/editor.background
hi('DiagnosticFloatingError',    { fg = '#f14c4c' }) -- editorError.foreground (floating)
hi('DiagnosticFloatingWarn',     { fg = '#ea7620' }) -- editorWarning.foreground (floating)
hi('DiagnosticFloatingInfo',     { fg = '#228df2' }) -- editorInfo.foreground (floating)
hi('DiagnosticFloatingHint',     { fg = '#d6d6dd' }) -- editor.foreground (floating)
hi('DiagnosticFloatingOk',       { fg = '#15ac91' }) -- editorGutter.addedBackground (floating)
hi('DiagnosticSignError',        { fg = '#f14c4c', bg = '#181818' }) -- editorError.foreground/editor.background (sign)
hi('DiagnosticSignWarn',         { fg = '#ea7620', bg = '#181818' }) -- editorWarning.foreground/editor.background (sign)
hi('DiagnosticSignInfo',         { fg = '#228df2', bg = '#181818' }) -- editorInfo.foreground/editor.background (sign)
hi('DiagnosticSignHint',         { fg = '#d6d6dd', bg = '#181818' }) -- editor.foreground/editor.background (sign)
hi('DiagnosticSignOk',           { fg = '#15ac91', bg = '#181818' }) -- editorGutter.addedBackground/editor.background (sign)
hi('DiagnosticDeprecated',       { sp = '#f14c4c', strikethrough = true, cterm = { strikethrough = true } }) -- deprecated/strikethrough

hi('DiagnosticUnnecessary', { link = 'Comment' }) -- unnecessary code (dimmed/comment)
hi('LspInlayHint',          { fg = '#838383', bg = '#2b2b2b' }) -- editorInlayHint.foreground/editorInlayHint.background
hi('SnippetTabstop',        { link = 'Visual' }) -- snippet tabstop highlight

-- Text
hi('@markup.raw',       { fg = '#e394dc' }) -- markup.inline.raw.markdown
hi('@markup.link',      { fg = '#228df2', underline = true }) -- textLink.foreground
hi('@markup.heading',   { fg = '#d6d6dd', bold = true }) -- markup.heading
hi('@markup.link.url',  { fg = '#228df2', underline = true }) -- textLink.foreground
hi('@markup.underline', { fg = '#83d6c5', underline = true }) -- markup.underline.link.markdown
hi('@comment.todo',     { fg = '#f8c762', bold = true }) -- markup.bold,todo.bold

-- Miscs
hi('@comment',     { fg = '#6d6d6d', italic = true }) -- comment, punctuation.definition.comment
hi('@punctuation', { fg = '#d6d6dd' }) -- punctuation.separator.delimiter

-- Constants
hi('@constant',          { fg = '#efb080' }) -- variable.other.constant
hi('@constant.builtin',  { fg = '#d6d6dd' }) -- support.variable.magic.python
hi('@constant.macro',    { fg = '#a8cc7c' }) -- keyword.control.directive
hi('@keyword.directive', { fg = '#a8cc7c' }) -- keyword.control.directive
hi('@string',            { fg = '#e394dc' }) -- string
hi('@string.escape',     { fg = '#d6d6dd' }) -- constant.character.escape
hi('@string.special',    { fg = '#d6d6dd' }) -- constant.character.escape
hi('@character',         { fg = '#aaa0fa' }) -- constant.character.xi
hi('@character.special', { fg = '#d6d6dd' }) -- constant.character.escape
hi('@number',            { fg = '#ebc88d' }) -- constant.numeric
hi('@boolean',           { fg = '#82d2ce' }) -- constant.language.true.cpp/false.cpp
hi('@number.float',      { fg = '#ebc88d' }) -- constant.numeric

-- Functions
hi('@function',                   { fg = '#efb080' }) -- support.function
hi('@function.builtin',           { fg = '#aaa0fa' }) -- support.function.std.rust/meta.function-call.php
hi('@function.macro',             { fg = '#a8cc7c' }) -- keyword.control.directive
hi('@function.method',            { fg = '#efb080' }) -- support.function
hi('@variable.parameter',         { fg = '#d6d6dd' }) -- variable.parameter.function
hi('@variable.parameter.builtin', { fg = '#f8c762' }) -- variable.parameter.function.language.python
hi('@variable.member',            { fg = '#aa9bf5' }) -- variable.other.property
hi('@property',                   { fg = '#aa9bf5' }) -- variable.other.property
hi('@attribute',                  { fg = '#a8cc7c' }) -- meta.function.decorator.python
hi('@attribute.builtin',          { fg = '#d6d6dd' }) -- support.token.decorator.python
hi('@constructor',                { fg = '#b180d7' }) -- symbolIcon.constructorForeground

-- Keywords
hi('@keyword.conditional', { fg = '#83d6c5' }) -- keyword
hi('@keyword.repeat',      { fg = '#83d6c5' }) -- keyword
hi('@keyword.type',        { fg = '#82d2ce' }) -- storage
hi('@label',               { fg = '#efb080' }) -- entity.name.label.cs
hi('@operator',            { fg = '#d6d6dd' }) -- keyword.operator
hi('@keyword',             { fg = '#83d6c5' }) -- keyword
hi('@keyword.exception',   { fg = '#83d6c5' }) -- keyword

hi('@variable',            { fg = '#d6d6dd' }) -- variable
hi('@type',                { fg = '#efb080' }) -- entity.name.type
hi('@type.definition',     { fg = '#efb080' }) -- entity.name.type
hi('@module',              { fg = '#efb080' }) -- entity.name.type.module
hi('@keyword.import',      { fg = '#a8cc7c' }) -- keyword.control.directive.include.cpp
hi('@keyword.directive',   { fg = '#a8cc7c' }) -- keyword.control.directive
hi('@keyword.debug',       { fg = '#83d6c5' }) -- token.debug-token
hi('@tag',                 { fg = '#fad075' }) -- meta.tag
hi('@tag.builtin',         { fg = '#af9cff' }) -- entity.name.tag.template/script/style

-- LSP semantic tokens
hi('@lsp.type.class',         { fg = '#efb080' }) -- entity.name.class
hi('@lsp.type.comment',       { fg = '#6d6d6d', italic = true }) -- comment
hi('@lsp.type.decorator',     { fg = '#a8cc7c' }) -- meta.function.decorator.python
hi('@lsp.type.enum',          { fg = '#efb080' }) -- entity.name.class
hi('@lsp.type.enumMember',    { fg = '#f8c762' }) -- support.constant.core.rust
hi('@lsp.type.function',      { fg = '#efb080' }) -- support.function
hi('@lsp.type.interface',     { fg = '#efb080' }) -- entity.name.class
hi('@lsp.type.macro',         { fg = '#a8cc7c' }) -- keyword.control.directive
--hi('@lsp.type.method',        { fg = '#efb080' }) -- support.function
hi('@lsp.type.method',        { fg = '#aaa0fa' }) -- support.function
hi('@lsp.type.namespace',     { fg = '#d1d1d1' }) -- entity.name.namespace
hi('@lsp.type.parameter',     { fg = '#d6d6dd' }) -- variable.parameter.function
hi('@lsp.type.property',      { fg = '#aa9bf5' }) -- variable.other.property
hi('@lsp.type.struct',        { fg = '#efb080' }) -- entity.name.class
hi('@lsp.type.type',          { fg = '#efb080' }) -- entity.name.type
hi('@lsp.type.typeParameter', { fg = '#aaa0fa' }) -- support.type.type.flowtype
hi('@lsp.type.variable',      { fg = '#d6d6dd' }) -- variable

hi('ColorColumn',      { bg = '#292929',                             ctermbg = 'darkgrey' }) -- editor.lineHighlightBackground
hi('CursorColumn',     { bg = '#292929',                             ctermbg = 'darkgrey' }) -- editor.lineHighlightBackground
hi('CursorLine',       { bg = '#292929',                             cterm = { underline = true } }) -- editor.lineHighlightBackground
hi('CursorLineNr',     { fg = '#c2c2c2', bold = true,                ctermfg = 'white', cterm = { underline = true } }) -- editorLineNumber.activeForeground
hi('DiffAdd',          { bg = '#83d6c5',                             ctermbg = 'lightgreen' }) -- diffEditor.insertedTextBackground
hi('DiffChange',       { bg = '#e5b95c',                             ctermbg = 'yellow' }) -- editorGutter.modifiedBackground
hi('DiffDelete',       { fg = '#f14c4c', bg = '#f14c4c', bold = true, ctermfg = 'red', ctermbg = 'lightred' }) -- diffEditor.removedTextBackground
hi('Directory',        { fg = '#d6d6dd',                             ctermfg = 'white' }) -- editor.foreground
hi('FoldColumn',       { fg = '#d6d6dd', bg = '#181818',             ctermfg = 'white', ctermbg = 'black' }) -- editorGutter.foldingControlForeground/editor.background
hi('Folded',           { fg = '#d6d6dd', bg = '#292929',             ctermfg = 'white', ctermbg = 'darkgrey' }) -- editorGutter.foldingControlForeground/editorWidget.background
hi('LineNr',           { fg = '#535353',                             ctermfg = 'darkgrey' }) -- editorLineNumber.foreground
hi('MatchParen',       { bg = '#163761',                             ctermbg = 'blue' }) -- editorBracketMatch.background
hi('MoreMsg',          { fg = '#15ac91', bold = true,                ctermfg = 'green' }) -- editorGutter.addedBackground
hi('Pmenu',            { bg = '#1d1d1d',                             ctermfg = 'white', ctermbg = 'black' }) -- editorSuggestWidget.background
hi('PmenuSel',         { bg = '#163761',                             ctermfg = 'white', ctermbg = 'blue' }) -- editorSuggestWidget.selectedBackground
hi('PmenuThumb',       { bg = '#676767',                             ctermbg = 'darkgrey' }) -- scrollbarSlider.background
hi('Question',         { fg = '#228df2', bold = true,                ctermfg = 'blue' }) -- editorInfo.foreground
hi('Search',           { bg = '#163764',                             ctermbg = 'blue' }) -- editor.findMatchBackground
hi('SignColumn',       { fg = '#d6d6dd', bg = '#181818',             ctermfg = 'white', ctermbg = 'black' }) -- editorGutter.foldingControlForeground/editor.background
hi('SpecialKey',       { fg = '#7a797a',                             ctermfg = 'darkgrey' }) -- activityBar.inactiveForeground
hi('SpellBad',         { sp = '#f14c4c', undercurl = true,           ctermbg = 'lightred' }) -- editorError.foreground
hi('SpellCap',         { sp = '#228df2', undercurl = true,           ctermbg = 'blue' }) -- notificationsInfoIcon.foreground
hi('SpellLocal',       { sp = '#15ac91', undercurl = true,           ctermbg = 'green' }) -- editorGutter.addedBackground
hi('SpellRare',        { sp = '#ea7620', undercurl = true,           ctermbg = 'yellow' }) -- editorWarning.foreground
hi('StatusLineTerm',   { fg = '#d6d6dd', bg = '#181818', bold = true, ctermfg = 'white', ctermbg = 'black', cterm = { bold = true } }) -- statusBar.foreground/background
hi('StatusLineTermNC', { fg = '#6b6b6b', bg = '#181818',             ctermfg = 'darkgrey', ctermbg = 'black' }) -- statusBar.noFolderForeground/background
hi('TabLine',          { bg = '#292929', underline = true,           ctermfg = 'white', ctermbg = 'darkgrey', cterm = { underline = true } }) -- tab.inactiveBackground
hi('Title',            { fg = '#d6d6dd', bold = true,                ctermfg = 'white' }) -- panelTitle.activeForeground
hi('Visual',           { fg = '#181818', bg = '#163761',             ctermfg = 'black', ctermbg = 'blue' }) -- editor.selectionBackground
hi('WarningMsg',       { fg = '#ea7620',                             ctermfg = 'yellow' }) -- editorWarning.foreground
hi('Comment',          { fg = '#6d6d6d',                             ctermfg = 'darkgrey' }) -- comment
hi('Constant',         { fg = '#ebc88d',                             ctermfg = 'yellow' }) -- constant.numeric
hi('Special',          { fg = '#e394dc',                             ctermfg = 'magenta' }) -- string
hi('Identifier',       { fg = '#d6d6dd',                             ctermfg = 'white' }) -- variable
hi('Statement',        { fg = '#83d6c5', bold = true,                ctermfg = 'cyan' }) -- keyword
hi('PreProc',          { fg = '#a8cc7c',                             ctermfg = 'green' }) -- keyword.control.directive
hi('Type',             { fg = '#efb080', bold = true,                ctermfg = 'yellow' }) -- entity.name.type
hi('Underlined',       { fg = '#228df2', underline = true,           ctermfg = 'blue', cterm = { underline = true } }) -- textLink.foreground
hi('Ignore',           {                                             ctermfg = 'white' })

hi('@function.python',                   { fg = '#aaa0fa' }) -- support.function.std.rust/meta.function-call.php
hi('@function.builtin.python',           { fg = '#efb080' }) -- support.function
hi('@function.method.python',            { fg = '#aaa0fa' }) -- support.function
hi('@type.builtin.python',               { link = 'Keyword' }) -- support.function
--stylua: ignore end
