local jbp = {
   red_old = '#DB6C6F',
   red_40 = '#ed7798',
   red_50 = '#f08ea9',

   orange_50 = '#FF9E64',
   orange_70 = '#FAB387',

   yellow = '#F6C177',

   purple_mauve = '#A9798B',
   purple_40 = '#A17FAD',
   purple_50 = '#B79BC3',

   green_goaway = '#8bc4c4',
   green_50 = '#9ece6a',

   blue_azure = '#3e8fb0',
   blue_70 = '#A6BFEC',
   blue_50 = '#82A6E4',

   bg_blue = '#1b2332',
   bg_purple = '#2f2837',
   bg_red = '#2f161d',
   bg_yellow = '#312718',

   [100] = '#17181c',
   [200] = '#212127',
   [300] = '#2a2b32',
   [400] = '#2f2f37',
   [500] = '#34343d',
   [600] = '#383942',
   [700] = '#3d3e48',
   [800] = '#42424d',
   [900] = '#4b4c58',

   inv = {
      [100] = '#323a43',
      [200] = '#434d5b',
      [300] = '#546273',
      [400] = '#607285',
      [500] = '#7e8da0',
      [600] = '#9ba6b5',
      [700] = '#b5bec9',
      [800] = '#d0d5dc',
      [900] = '#edeff2',
   },
}

local h = vim.api.nvim_set_hl

-- hlgr base
h(0, 'Normal', { bg = jbp[400], fg = jbp.inv[700] })
h(0, 'NormalNC', { bg = jbp[100] })
-- Filler lines (~) after the end of the buffer.
h(0, 'EndOfBuffer', { bg = jbp[500], fg = jbp.inv[300] })
h(0, 'MatchParen', { bg = jbp.inv[800], fg = jbp[100] })
h(0, 'LineNr', { fg = jbp.inv[400] }) -- Line number column, gutter.
h(0, 'LineNrAbove', { link = 'LineNr' })
h(0, 'LineNrBelow', { link = 'LineNr' })
-- Where linting and errors popup.
h(0, 'SignColumn', { bg = jbp[300] })
h(0, 'ColorColumn', { bg = jbp[400] })
-- Syntax that is being affected by concealment.
h(0, 'Conceal', {})
-- Directories in NetRW.
h(0, 'Directory', { fg = jbp.blue_50 })
-- Directories in NetRW.
h(0, 'netrwExe', { fg = jbp.green_goaway })
-- The 'showmode' message (e.g., '-- INSERT --') uses this.
h(0, 'ModeMsg', { fg = jbp.inv[700] })
-- Area for messages and cmdline, `/` and `:`.
h(0, 'MsgArea', { bg = jbp[900], fg = jbp.inv[900] })
h(0, 'MsgSeparator', { bg = jbp[900], fg = jbp.inv[900] })
h(0, 'MoreMsg', { link = 'ModeMsg' }) -- |more-prompt|
-- The non-selected entries of a completion menu, normal item.
h(0, 'Pmenu', { bg = jbp[600], fg = jbp.inv[800] })
h(0, 'PmenuSel', { bg = jbp[900], fg = jbp.inv[900], blend = 0 }) -- Selected item.
h(0, 'PmenuSbar', { bg = jbp[800] }) -- Scrollbar
h(0, 'PmenuThumb', { bg = jbp.inv[700] }) -- Thumb of the scrollbar.
h(0, 'Question', { link = 'ModeMsg' }) -- |hit-enter| prompt and yes/no questions.
-- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
h(0, 'QuickFixLine', { bg = jbp.orange_70, fg = jbp.inv[800], nocombine = true })
-- Any special symbol, sometimes it could be {} curly braces/brackets and also `NOTE:`
-- SpecialChar SpecialComment
h(0, 'Special', { fg = jbp.orange_70, undercurl = false })
-- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace.
h(0, 'SpecialKey', { link = 'red' })
h(0, 'Visual', { bg = jbp[900], reverse = true, nocombine = true }) -- Visual mode selection.
-- Visual mode selection when vim is "Not Owning the Selection".
h(0, 'VisualNOS', { link = 'Visual' })
h(0, 'Whitespace', { fg = jbp[800] }) -- Listchars.
h(0, 'NonText', { link = 'Comment' }) -- Used in showbreak, listchars and virtualtext.
h(0, 'VertSplit', { fg = jbp.inv[800] }) -- Used for splits, also used for completion menus
h(0, 'WinSeperator', { link = 'VertSplit' }) -- Separators between window splits.
h(0, 'WinBar', { link = 'VertSplit' }) -- Separators between window splits.
h(0, 'WinBarNC', { link = 'VertSplit' }) -- Separators between window splits.

-- hlgr search
h(0, 'Search', { bg = jbp.orange_70, fg = jbp[100] }) -- Last search patterns
-- Current search pattern when searching with / and with :s///
h(0, 'IncSearch', { bg = jbp.green_goaway, fg = jbp[100] })
h(0, 'CurSearch', { bg = jbp.blue_50, fg = jbp[100] }) -- Current search match under the cursor
-- :substitute or :s///gc replacement text highlighting
h(0, 'Substitute', { bg = jbp.purple_40, fg = jbp[100] })

-- hlgr spell
-- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
h(0, 'SpellBad', { undercurl = true })
-- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
h(0, 'SpellCap', { link = 'SpellBad' })
-- Word that is recognized by the spellchecker as one that is used in another region.
-- |spell| Combined with the highlighting used otherwise.
h(0, 'SpellLocal', { link = 'SpellBad' })
-- Word that is recognized by the spellchecker as one that is hardly ever used.
-- |spell| Combined with the highlighting used otherwise.
h(0, 'SpellRare', { link = 'SpellBad' })

-- h(0, 'TabLine', {}) -- Tab pages line, not active tab page label.
-- h(0, 'TabLineFill', {}) -- TabLineFill	Tab pages line, where there are no labels.
-- h(0, 'TabLineSel', {}) -- Tab pages line, active tab page label.
-- h(0, 'WildMenu', {}) -- Current match in 'wildmenu' completion.
-- h(0, 'WinBar', {}) -- Window bar of current window.
-- h(0, 'WinBarNC', {}) -- Window bar of not-current windows.
-- Current font, background and foreground colors of the menus.
-- Also used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.
h(0, 'Menu', { fg = 'red' })
-- Current background and foreground of the main window's scrollbars.  Applicable highlight arguments: guibg, guifg.
h(0, 'Scrollbar', { bg = jbp[800] })
-- Current font, background and foreground of the tooltips.  Applicable highlight arguments: font, guibg, guifg.
h(0, 'Tooltip', { link = 'Menu' })
-- Parameters of a function.
h(0, '@parameter', { fg = jbp.blue_70 })
-- Object and struct fields.
h(0, '@lsp.type.parameter', { link = '@parameter' })
-- References to parameters of a function. I don't know where this is applied
h(0, '@parameter.reference', { link = '@parameter' })
h(0, '@preproc', { fg = jbp.purple_40 }) -- Preprocessor #if, #else, #endif, etc.
h(0, '@lsp.type.property', { link = '@field' }) -- Object and struct fields.
h(0, '@lsp.type.class', { fg = jbp.purple_50 }) -- Object and struct fields.
h(0, '@lsp.type.interface', { link = '@lsp.type.class' }) -- Object and struct fields.
h(0, '@field', { fg = jbp.blue_50 }) -- Object and struct fields.
h(0, '@property', { link = '@field' })
-- h(0, '@lsp.type.property', { link = '@property' })
-- h(0, '@lsp.type.property.lua', { fg = jbp.clr_sky }) -- Object and struct fields.

-- hlgr float numbers hlgr floating numbers
h(0, 'Float', { fg = jbp.red_40 }) -- A floating point constant: 2.3e10
h(0, '@float', { link = 'Float' }) -- Floating-point number literals.

-- hlgr floating windows hlgr floating pans
h(0, 'FloatBorder', { bg = jbp[900], fg = jbp.inv[600] })
h(0, 'NormalFloat', { bg = jbp[900] })
h(0, 'FloatTitle', { bg = jbp[900], fg = jbp.inv[800] })

h(0, 'Delimiter', { fg = jbp.inv[500] }) -- . and ,
h(0, '@punctuation.bracket', { link = 'Delimiter' }) -- () {} []
h(0, '@punctuation.bracket.svelte', { fg = jbp.purple_mauve }) -- () Brackets, braces, parentheses, etc.
-- Punctuation delimiters: Periods, commas, semicolons, etc.
h(0, '@punctuation.delimiter', { link = 'Delimiter' })
h(0, '@lsp.typemod.variable.definition', { link = '@punctuation.delimiter' })
-- Punctuation delimiters: Periods, commas, semicolons, etc.
h(0, '@punctuation.delimiter.markdown_inline', { fg = jbp.purple_40 })

-- Special punctuation that doesn't fit into the previous categories.
h(0, '@punctuation.special', { fg = jbp.green_50 })
h(0, 'StorageClass', { fg = jbp.orange_50 })
-- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc. This variable doesn't work
h(0, '@storageclass', { link = 'StorageClass' })

-- hlgr cursor
h(0, 'CursorColumn', { bg = jbp[800] })
h(0, 'CursorLine', { bg = jbp[800] })
h(0, 'CursorLineNr', { fg = jbp.inv[800], bg = jbp[800] }) -- Current position on gutter.
h(0, 'CursorLineSign', { link = 'CursorLineNr' })
h(0, 'CursorLineFold', { bg = jbp[800] })

-- hlgr folds
h(0, 'FoldColumn', { bg = jbp[400], fg = jbp.inv[500] }) -- Column besides gutter.
h(0, 'Folded', { fg = jbp[100], bg = jbp.inv[500] }) -- Folded lines.

-- hlgr statusline
h(0, 'StatusLine', { bg = jbp[500], fg = jbp.inv[700] })
h(0, 'StatusLineNC', { link = 'EndOfBuffer' })

-- hlgr loops hlgr for hlgr while
h(0, 'Repeat', { fg = jbp.purple_40 })
h(0, '@repeat', { link = 'Repeat' })

-- hlgr types int, long, char, etcp.
h(0, 'Type', { fg = jbp.blue_azure })
h(0, 'Typedef', { link = 'Type' })
h(0, '@type.builtin', { link = 'Type' }) -- Built-in types: `i32` in Rust.
h(0, '@type.builtin.c', { fg = jbp.purple_40 }) -- Built-in types: `i32` in Rust.
h(0, '@type.definition', { fg = jbp.blue_50 }) -- Type definitions, e.g. `typedef` in C.
-- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
h(0, '@type.qualifier', { fg = jbp.blue_50 })
h(0, '@type', { link = '@lsp.type.class' })
-- h(0, '@type', { link = 'Constant' }) -- Type (and class) definitions and annotations.

-- h(0, '@symbol', { fg = 'red', bg = 'blue' }) -- Identifiers referring to symbols or atoms.
-- h(0, '@none', { undercurl = true })
-- Variable names that don't fit into other categories, like `vim` in vim.api.
-- @variable
h(0, 'Identifier', { fg = jbp.inv[700] })

-- Variable ames defined by the language: `this` or `self` in Javascript and Python.
h(0, '@variable.builtin', { link = '@constant.builtin' })
-- Variable names defined by the language: `this` or `self` in Javascript and Python.
h(0, '@variable.builtin.python', { fg = jbp.green_goaway })

-- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
h(0, '@attribute', { fg = jbp.red_50 })

-- hlgr booleans
h(0, 'Boolean', { fg = jbp.orange_70 })
h(0, '@boolean', { link = 'Boolean' }) -- Boolean literals: `True` and `False` in Python.

-- hlgr strings
-- @string
h(0, 'String', { fg = jbp.green_goaway })
h(0, '@string.regex', { fg = jbp.orange_70 }) -- Regular expression literals.
-- Escape characters within a string: `\n`, `\t`, etc.
h(0, '@string.escape', { fg = jbp.orange_70 })
-- Strings with special meaning that don't fit into the previous categories.

-- hlgr numbers
h(0, 'Number', { fg = jbp.orange_70 })
h(0, '@number', { link = 'Number' }) -- Numeric literals that don't fit into other categories.

-- hlgr constants
-- NOTE: to self, this changes the name in -> TODO(santigo-zero):
h(0, 'Constant', { fg = jbp.red_40 })
-- Constants identifiers. These might not be semantically constant.
-- E.g. uppercase variables in Python and emmylua annotations in lua
h(0, '@constant', { fg = jbp.red_50 })
-- built-in constant values: `nil` in Lua, undefined and null in Javascript.
h(0, '@constant.builtin', { fg = jbp.red_40 })
h(0, '@constant.macro', { fg = jbp.purple_40 }) -- Constants defined by macros: `NULL` in C.
h(0, '@lsp.type.macro', { fg = jbp.purple_50 }) -- Constants defined by macros: `NULL` in C.
-- Numeric literals that don't fit into other categories.
h(0, '@lsp.type.enumMember', { link = 'Constant' })

-- hlgr if statements if else switch
h(0, 'Conditional', { fg = jbp.purple_40 }) -- if, then, else, endif, switch, etc.
-- Keywords related to conditionals: `if`, `when`, `cond`, etc.
h(0, '@conditional', { link = 'Conditional' })

h(0, 'Error', { fg = jbp.red_40 }) -- Any erroneous construct
h(0, 'ErrorMsg', { link = 'Error' }) -- Error messages in the cmdline
-- Syntax/parser errors. This might highlight large sections of code while the
-- user is typing still incomplete code, use a sensible highlight.
h(0, '@error', { link = 'ErrorMsg' })
h(0, 'WarningMsg', { fg = jbp.yellow }) -- Warning messages.

-- hlgr todo
h(0, 'Todo', { fg = jbp.purple_40, bold = true })
h(0, '@todo', { link = 'Todo' }) -- TODO(santigo-zero): Test.
h(0, '@text.todo', { link = 'Todo' }) -- TODO(santigo-zero): Test.
h(0, '@text.todo.comment', { link = 'Todo' }) -- TODO(santigo-zero): Test.

h(0, '@text', { fg = jbp.inv[600] })
-- NOTE: INUPPERCASE: -- The italic = true affects @todo for some reason
h(0, '@text.note', { fg = jbp.blue_50 })
-- Text representation of a warning note. This affecs @todo hl group for some reason
h(0, '@text.warning', { link = 'Todo' })
h(0, '@text.danger', { link = 'WarningMsg' }) -- FIXME Text representation of a danger note.
-- FIXME Text representation of a danger note.
h(0, '@text.strong', { bold = true, fg = jbp.yellow })
-- FIXME Text representation of a danger note.
h(0, '@text.emphasis', { italic = true, fg = jbp.green_goaway })
-- FIXME Text representation of a danger note.
h(0, '@text.strike', { strikethrough = true, fg = jbp.blue_50 })

-- TODO(santigo-zero): Fix this, where it's being used I don't know. Debugging statements.
-- h(0, 'TSDebug', {})
h(0, '@define', { fg = jbp.blue_50 }) -- Preprocessor #define statements.
h(0, '@tag', { fg = jbp.purple_40 }) -- Tags like HTML tag names.
h(0, '@tag.attribute', { fg = jbp.blue_azure }) -- HTML attributes
h(0, '@tag.delimiter', { fg = jbp.blue_azure }) -- Tag delimiters like `<` `>` `/`.
-- h(0, 'TSStrong', {}) -- Text to be represented in bold.
-- h(0, 'TSEmphasis', {}) -- Text to be represented with emphasis.
-- h(0, 'TSUnderline', {}) -- Text to be represented with an underline.
-- h(0, 'TSStrike', { link = 'Title' }) -- Strikethrough text.
-- Titles for output from ":set all", ":autocmd", also plugins use it for some windows.
h(0, 'Title', { fg = jbp.orange_50 })
h(0, '@text.title', { link = 'Title' }) -- Text that is part of a title.
-- h(0, 'TSLiteral', {}) -- Literal or verbatim text.
-- h(0, 'TSURI', {}) -- URIs like hyperlinks or email addresses.
-- h(0, 'TSMath', {}) -- Math environments like LaTeX's `$ ... $`.
-- Help pages: Footnotes, text references, citations, etc.
h(0, '@text.reference', { fg = jbp.red_40 })
-- h(0, 'TSEnvironment', {}) -- Text environments of markup languages.
-- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
-- h(0, 'TSEnvironmentName', {})

-- hlgr zsh
h(0, 'zshSubst', { fg = jbp.red_40 })
h(0, 'zshDeref', { fg = jbp.red_40 })
h(0, 'zshString', { link = 'String' })
h(0, 'zshShortDeref', { link = 'Constant' })
h(0, 'zshPreProc', { link = 'Comment' })
h(0, 'zshTypes', { link = 'zshKeyword' })

-- hlgr errors hlgr try hlgr throw
h(0, 'Exception', { bg = jbp.bg_purple, fg = jbp.purple_40 }) -- try, catch, throw
-- Exception related keywords: `try`, `except`, `finally` in Python.
h(0, '@exception', { link = 'Exception' })

-- hlgr functions
h(0, 'Function', { fg = jbp.purple_50 }) -- Function name (also: methods for classes)
h(0, '@function', { link = 'Function' }) -- Function definitions.
-- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
h(0, '@function.macro', { fg = jbp.purple_40 })
h(0, '@function.call', { fg = jbp.blue_50 }) -- Function calls.
h(0, '@function.builtin', { fg = jbp.purple_50 }) -- Built-in functions: `print` in Lua.

-- import { ... } from '...' or from ... import ... or #include in C
h(0, 'Include', { fg = jbp.blue_50 })
-- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
h(0, '@include', { link = 'Include' })

-- hlgr keywords
h(0, 'Keyword', { fg = jbp.purple_40 }) -- Any other keyword
h(0, '@keyword', { link = 'Keyword' }) -- Keywords that don't fit into other categories.
-- h(0, '@keyword.svelte', { fg = jbp.red2 }) -- Keywords that don't fit into other categories.
-- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
h(0, '@keyword.function', { fg = jbp.purple_40, italic = true })
-- Unary and binary operators that are English words: `and`, `or` in Python and Lua; `sizeof` in C.
h(0, '@keyword.operator', { fg = jbp.purple_mauve })
h(0, '@keyword.return', { fg = jbp.purple_50 }) -- Keywords like `return` and `yield`.

h(0, 'Label', { fg = jbp.green_goaway }) -- case, default, etc.
-- GOTO labels: `label:` in C, and `::label::` in Lua, and *thing* in help pages or the name of codeblocks in lua.
h(0, '@label', { link = 'Label' })

h(0, 'Method', { fg = jbp.blue_50 })
h(0, '@method', { link = 'Method' }) -- Method definitions.
h(0, '@method.call', { link = 'Method' }) -- Method calls.

h(0, 'Macro', { fg = jbp.red_40 })

-- will override Special colors, so we just link to it since in most cases
-- constructors calls and definitions start with a capital letter.
h(0, '@constructor', { fg = jbp.yellow, bold = true }) -- Object and struct fields.
h(0, '@constructor.lua', {}) -- Object and struct fields.
h(0, '@namespace', { fg = jbp.green_goaway }) -- identifiers referring to modules and namespaces.

h(0, 'Character', { fg = jbp.red_50 }) -- A character constant: 'c', '\n'
h(0, '@character', { link = 'Character' }) -- Character literals: `'a'` in C and .
h(0, '@character.special', { link = 'Special' }) -- Special characters.

h(0, 'Statement', { fg = jbp.purple_40 }) -- the = and == and any statement.

h(0, 'Operator', { fg = jbp.red_40 }) -- "sizeof", "+", "*"
-- = or ==, binary or unary operators: `+`, and also `->` and `*` in C.
h(0, '@operator', { link = 'Operator' })
-- h(0, '@operator.svelte', { fg = jbp.clr_green_70 })

-- comments
h(0, 'Comment', { fg = jbp.inv[400], italic = true })
h(0, '@comment', { link = 'Comment' })
h(0, '@spell.comment', {})
h(0, '@lsp.type.comment', { link = 'Comment' })
h(0, '@lsp.type.comment.lua', {})

h(0, 'DiffAdd', { fg = jbp.blue_50 })
h(0, 'DiffChange', { fg = jbp.green_goaway })
h(0, 'DiffDelete', { fg = jbp.red_40 })
h(0, 'DiffText', { fg = jbp.inv[600] })

-- rest of semantic tokens
h(0, '@lsp.mod.deprecated', { strikethrough = true })

-- css
h(0, '@operator.css', { fg = jbp.purple_50 })
h(0, '@field.css', { fg = jbp.green_50 })
h(0, '@function.css', { fg = jbp.green_50 })
h(0, '@type.definition.css', { fg = jbp.orange_70 })

-- nvim-lspconfig and others
h(0, 'DiagnosticError', { fg = jbp.red_40 })
h(0, 'DiagnosticHint', { fg = jbp.blue_50 })
h(0, 'DiagnosticInfo', { fg = jbp.purple_40 })
h(0, 'DiagnosticWarn', { fg = jbp.yellow })
h(0, 'DiagnosticVirtualTextError', { bg = jbp.bg_red, fg = jbp.red_40 })
h(0, 'DiagnosticVirtualTextHint', { bg = jbp.bg_blue, fg = jbp.blue_50 })
h(0, 'DiagnosticVirtualTextInfo', { bg = jbp.bg_purple, fg = jbp.purple_40 })
h(0, 'DiagnosticVirtualTextWarn', { bg = jbp.bg_yellow, fg = jbp.yellow })
h(0, 'DiagnosticUnderlineError', { undercurl = true, sp = jbp.red_40 })
h(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = jbp.blue_50 })
h(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = jbp.purple_40 })
h(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = jbp.yellow })

-- When you call a function or use a method/class
h(0, 'LspReferenceRead', { fg = jbp[200], bg = jbp.inv[700] })
h(0, 'LspReferenceText', { link = 'LspReferenceRead' })
h(0, 'LspReferenceWrite', { link = 'LspReferenceRead' })
h(0, 'LspInlayHint', { fg = jbp.inv[400] })

-- https://github.com/lewis6991/gitsigns.nvim
h(0, 'GitSignsChange', { fg = jbp.purple_40 })
h(0, 'GitSignsAdd', { fg = jbp.blue_50 })
h(0, 'GitSignsDelete', { fg = jbp.red_50 })

-- https://github.com/lukas-reineke/indent-blankline.nvim
h(0, 'IndentBlanklineChar', { fg = jbp[700] })
