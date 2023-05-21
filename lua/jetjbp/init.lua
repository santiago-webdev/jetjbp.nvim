local jbp = {
   text = '#C6D0F5',
   plain = '#BAC3E9',
   subtext = '#A5ABD2',
   steel = '#8689B9',
   dimmed1 = '#74749C',
   dimmed2 = '#63618B',
   dimmed3 = '#534F79', -- Used for comments, foldtext and identation/whitespaces spaces
   fg_dim = '#43405f',
   bg_high = '#26233A',
   bg_med = '#1F1D2E',
   -- bg_base    = '#1A1724',
   bg_base = '#1B1A27',
   bg_low = '#15121D',

   red1 = '#EB6F92',
   red2 = '#f38fa9',
   red3 = '#EBA0AC',
   orange1 = '#FF9E64',
   orange2 = '#FAB387',
   yellow = '#F6C177',
   green1 = '#9ece6a', -- Yes I took this color from tokyonight.
   green2 = '#7ebdb6', -- goaway green
   blue = '#7ba1e3',
   teal = '#3e8fb0',
   purple1 = '#9D86B9',
   purple2 = '#b094de',

   bg_red1 = '#2f161d',
   bg_yellow = '#312718',
   bg_blue = '#1b2332',
   bg_purple1 = '#2f2837',

   clr_05 = '#16171c',
   clr_10 = '#1f2027',
   clr_15 = '#23252d',
   clr_20 = '#282933',
   clr_25 = '#2c2e39',
   clr_30 = '#31323e',
   clr_35 = '#333541',
   clr_40 = '#353744',
   clr_45 = '#3a3c4a',
   clr_50 = '#3e404f',
   clr_55 = '#434555',

   clr_60 = '#4d4f64',
   clr_65 = '#585a73',
   clr_70 = '#636581',
   clr_75 = '#6e7190',
   clr_80 = '#7d7f9b',
   clr_85 = '#8b8da6',
   clr_90 = '#9a9bb1',
   clr_95 = '#a8a9bc',

   clr_100 = '#b7b8ea',
   clr_150 = '#c0c0ec',
   clr_200 = '#c8c9ed',
   clr_250 = '#d1d2f0',
   clr_300 = '#d9daf2',
}

local function h(name, T)
   vim.api.nvim_set_hl(0, name, T)
end

-- hlgr base
h('Normal', { fg = jbp.clr_100, bg = jbp.clr_20 })
h('NormalFloat', { link = 'Normal' })
h('NormalNC', { bg = jbp.clr_20 })
h('EndOfBuffer', { bg = jbp.clr_25, fg = jbp.clr_85 }) -- Filler lines (~) after the end of the buffer.
h('MatchParen', { bg = jbp.orange1 })
h('LineNr', { fg = jbp.clr_65 }) -- Line number column, gutter.
h('LineNrAbove', { link = 'LineNr' })
h('LineNrBelow', { link = 'LineNr' })
h('SignColumn', { bg = jbp.clr_20 }) -- Where linting and errors popup
h('ColorColumn', { bg = jbp.clr_25 })
h('Conceal', {})
h('Directory', { fg = jbp.blue }) -- Directories in NetRW.
h('netrwExe', { fg = jbp.green2 }) -- Directories in NetRW.
h('ModeMsg', { fg = jbp.clr_90 }) -- The 'showmode' message (e.g., '-- INSERT --') uses this.
h('MsgArea', { link = 'ModeMsg' }) -- Area for messages and cmdline, `/` and `:`.
h('MsgSeparator', { link = 'ModeMsg' })
h('MoreMsg', { link = 'ModeMsg' }) -- |more-prompt|
h('Pmenu', { bg = jbp.clr_40, fg = jbp.clr_95 }) -- The non-selected entries of a completion menu, normal item.
h('PmenuSel', { bg = jbp.clr_55, fg = jbp.clr_300, blend = 0 }) -- Selected item.
h('PmenuSbar', { bg = jbp.clr_50 }) -- Scrollbar
h('PmenuThumb', { bg = jbp.clr_80 }) -- Thumb of the scrollbar.
h('Question', { fg = jbp.clr_95 }) -- |hit-enter| prompt and yes/no questions.
h('QuickFixLine', { bg = jbp.orange2, fg = jbp.clr_95, nocombine = true }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
h('Special', { fg = jbp.orange2, undercurl = false }) -- Any special symbol, sometimes it could be {} curly braces/brackets and also `NOTE:`
h('SpecialKey', { link = 'Special' }) -- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace.
h('Visual', { bg = jbp.clr_60, reverse = true, nocombine = true }) -- Visual mode selection.
h('VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".
h('Whitespace', { fg = jbp.clr_95 }) -- Listchars.
h('NonText', { link = 'Comment' }) -- Used in showbreak, listchars and virtualtext.
-- -- WinBar WinBarNC
h('VertSplit', { fg = jbp.clr_300 }) -- Used for splits, also used for completion menus
h('WinSeperator', { link = 'VertSplit' }) -- Separators between window splits.

-- hlgr search
h('Search', { bg = jbp.orange2, fg = jbp.clr_05 }) -- Last search patterns
h('IncSearch', { bg = jbp.green2, fg = jbp.clr_05 }) -- Current search pattern when searching with / and with :s///
h('CurSearch', { bg = jbp.blue, fg = jbp.clr_05 }) -- Current search match under the cursor
h('Substitute', { bg = jbp.purple1, fg = jbp.clr_05 }) -- :substitute or :s///gc replacement text highlighting

-- hlgr spell
h('SpellBad', { link = 'Special' }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
h('SpellCap', { link = 'Special' }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
h('SpellLocal', { link = 'Special' }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
h('SpellRare', { link = 'Special' }) -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

-- h('TabLine', {}) -- Tab pages line, not active tab page label.
-- h('TabLineFill', {}) -- TabLineFill	Tab pages line, where there are no labels.
-- h('TabLineSel', {}) -- Tab pages line, active tab page label.
-- h('WildMenu', {}) -- Current match in 'wildmenu' completion.
-- h('WinBar', {}) -- Window bar of current window.
-- h('WinBarNC', {}) -- Window bar of not-current windows.
h('Menu', { fg = jbp.text }) -- Current font, background and foreground colors of the menus.  Also used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.
h('Scrollbar', { fg = jbp.steel }) -- Current background and foreground of the main window's scrollbars.  Applicable highlight arguments: guibg, guifg.
h('Tooltip', { link = 'Menu' }) -- Current font, background and foreground of the tooltips.  Applicable highlight arguments: font, guibg, guifg.
h('@parameter', { fg = jbp.red3 }) -- Parameters of a function.
h('@parameter.reference', { link = '@parameter' }) -- References to parameters of a function. I don't know where this is applied
h('@preproc', { fg = jbp.purple1 }) -- Preprocessor #if, #else, #endif, etc.
h('@lsp.type.property', { fg = jbp.green2 }) -- Object and struct fields.
h('@field', { fg = jbp.green2 }) -- Object and struct fields.
h('@property', { link = '@field' })
h('Float', { fg = jbp.red1 }) -- A floating point constant: 2.3e10
h('@float', { link = 'Float' }) -- Floating-point number literals.
h('Delimiter', { fg = jbp.yellow }) -- . and ,
h('@punctuation.bracket', { fg = jbp.dimmed3 }) -- () Brackets, braces, parentheses, etc.
h('@punctuation.bracket.svelte', { fg = jbp.red2 }) -- () Brackets, braces, parentheses, etc.
h('@punctuation.delimiter', { link = 'Delimiter' }) -- Punctuation delimiters: Periods, commas, semicolons, etc.
h('@punctuation.special', { fg = jbp.orange1 }) -- Special punctuation that doesn't fit into the previous categories.
h('StorageClass', { fg = jbp.orange1 })
h('@storageclass', { link = 'StorageClass' }) -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc. This variable doesn't work

-- hlgr cursor
h('CursorColumn', { bg = jbp.clr_35 })
h('CursorLine', { bg = jbp.clr_35 })
h('CursorLineNr', { fg = jbp.clr_300, bg = jbp.clr_35 }) -- Current position on gutter.
h('CursorLineSign', { link = 'CursorLineNr' })
h('CursorLineFold', { bg = jbp.clr_35 })

-- hlgr folds
h('FoldColumn', { bg = jbp.clr_25, fg = jbp.clr_70 }) -- Column besides gutter.
h('Folded', { fg = jbp.clr_05, bg = jbp.clr_100 }) -- Folded lines.

-- hlgr statusline
h('StatusLine', { bg = jbp.clr_30, fg = jbp.clr_100 })
h('StatusLineNC', { link = 'EndOfBuffer' })

h('Repeat', { fg = jbp.purple1 }) -- for and while loops
h('@repeat', { link = 'Repeat' }) -- Keywords related to loops: `for`, `while`, etc.

h('Type', { fg = jbp.teal }) -- (preferred) int, long, char, etcp.
h('@type', { link = 'Type' }) -- Type (and class) definitions and annotations.
h('@type.builtin', { link = 'Type' }) -- Built-in types: `i32` in Rust.
h('@type.definition', { fg = jbp.blue }) -- Type definitions, e.g. `typedef` in C.
h('@type.qualifier', { fg = jbp.blue }) -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.

h('Identifier', { fg = jbp.clr_100 }) -- (preferred) any variable name

-- h('@none', { undercurl = true })
h('@variable', { link = 'Identifier' }) -- Variable names that don't fit into other categories, like `vim` in vim.api.

h('@variable.builtin', { fg = jbp.red3 }) -- Variable names defined by the language: `this` or `self` in Javascript and Python.
h('@variable.builtin.python', { fg = jbp.teal }) -- Variable names defined by the language: `this` or `self` in Javascript and Python.

h('@attribute', { fg = jbp.red3 }) -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.

h('Boolean', { fg = jbp.orange2 })
h('@boolean', { link = 'Boolean' }) -- Boolean literals: `True` and `False` in Python.

h('String', { fg = jbp.yellow })
h('@string', { link = 'String' }) -- String literals.
-- h('@string.svelte', { link = 'Comment' }) -- String literals.
h('@string.regex', { fg = jbp.orange2 }) -- Regular expression literals.
h('@string.escape', { fg = jbp.orange2 }) -- Escape characters within a string: `\n`, `\t`, etc.
h('@string.special', { link = 'Special' }) -- Strings with special meaning that don't fit into the previous categories.

h('@symbol', {}) -- Identifiers referring to symbols or atoms.

h('Number', { fg = jbp.orange2 })
h('@number', { link = 'Number' }) -- Numeric literals that don't fit into other categories.

h('Constant', { fg = jbp.red1 }) -- NOTE: to self, this changes the name in -> TODO(santigo-zero):
h('@constant', { fg = jbp.red3 }) -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python and emmylua annotations in lua
h('@constant.builtin', { fg = jbp.orange2 }) -- Built-in constant values: `nil` in Lua.
h('@constant.macro', { fg = jbp.red1 }) -- Constants defined by macros: `NULL` in C.

h('Conditional', { fg = jbp.purple1 }) -- if, then, else, endif, switch, etc.
h('@conditional', { link = 'Conditional' }) -- Keywords related to conditionals: `if`, `when`, `cond`, etc.

h('Error', { fg = jbp.red1 }) -- Any erroneous construct
h('ErrorMsg', { link = 'Error' }) -- Error messages in the cmdline
h('@error', { link = 'ErrorMsg' }) -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
h('WarningMsg', { fg = jbp.yellow }) -- Warning messages.

h('Todo', { fg = jbp.purple1, bold = true })
h('@todo', { link = 'Todo' }) -- TODO(santigo-zero): Test.
h('@text.todo.comment', { link = 'Todo' }) -- TODO(santigo-zero): Test.

h('@text', { fg = jbp.text })
h('@text.note', { fg = jbp.blue }) -- NOTE: INUPPERCASE: -- The italic = true affects @todo for some reason
h('@text.warning', { link = 'Todo' }) -- Text representation of a warning note. This affecs @todo hl group for some reason
h('@text.danger', { link = 'WarningMsg' }) -- FIXME Text representation of a danger note.

-- h('TSDebug', {}) -- TODO(santigo-zero): Fix this, where it's being used I don't know. Debugging statements.
-- h('TSDefine', {}) -- Preprocessor #define statements.
h('@tag', { fg = jbp.purple1 }) -- Tags like HTML tag names.
h('@tag.attribute', { fg = jbp.green2 }) -- HTML tag attributes like classes and ids
h('@tag.delimiter', { fg = jbp.teal }) -- Tag delimiters like `<` `>` `/`.
-- h('TSStrong', {}) -- Text to be represented in bold.
-- h('TSEmphasis', {}) -- Text to be represented with emphasis.
-- h('TSUnderline', {}) -- Text to be represented with an underline.
-- h('TSStrike', { link = 'Title' }) -- Strikethrough text.
h('Title', { fg = jbp.orange1 }) -- Titles for output from ":set all", ":autocmd", also plugins use it for some windows.
h('@text.title', { link = 'Title' }) -- Text that is part of a title.
-- h('TSLiteral', {}) -- Literal or verbatim text.
-- h('TSURI', {}) -- URIs like hyperlinks or email addresses.
-- h('TSMath', {}) -- Math environments like LaTeX's `$ ... $`.
h('@text.reference', { fg = jbp.red1 }) -- Help pages: Footnotes, text references, citations, etc.
-- h('TSEnvironment', {}) -- Text environments of markup languages.
-- h('TSEnvironmentName', {}) -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.

-- Zsh
h('zshSubst', { fg = jbp.red1 })
h('zshDeref', { fg = jbp.red1 })
h('zshString', { link = 'String' })
h('zshShortDeref', { link = 'Constant' })
h('zshPreProc', { link = 'Comment' })
h('zshTypes', { link = 'zshKeyword' })

h('Exception', { fg = jbp.purple1 }) -- try, catch, throw
h('@exception', { link = 'Exception' }) -- Exception related keywords: `try`, `except`, `finally` in Python.

h('Function', { fg = jbp.purple2 }) -- Function name (also: methods for classes)
h('@function', { link = 'Function' }) -- Function definitions.
h('@function.macro', { fg = jbp.purple1 }) -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.

h('@function.call', { fg = jbp.blue }) -- Function calls.
h('@function.builtin', { fg = jbp.purple2 }) -- Built-in functions: `print` in Lua.

h('Include', { fg = jbp.blue }) -- from ... import ...
h('@include', { link = 'Include' }) -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.

h('Keyword', { fg = jbp.purple1 }) -- Any other keyword
h('@keyword', { link = 'Keyword' }) -- Keywords that don't fit into other categories.
-- h('@keyword.svelte', { fg = jbp.red2 }) -- Keywords that don't fit into other categories.
h('@keyword.function', { fg = jbp.purple1, italic = true }) -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
h('@keyword.operator', { fg = jbp.red1 }) -- Unary and binary operators that are English words: `and`, `or` in Python and Lua; `sizeof` in C.
h('@keyword.return', { fg = jbp.purple2 }) -- Keywords like `return` and `yield`.

h('Label', { fg = jbp.green2 }) -- case, default, etc.
h('@label', { link = 'Label' }) -- GOTO labels: `label:` in C, and `::label::` in Lua, and *thing* in help pages.

h('Method', { fg = jbp.blue })
h('@method', { link = 'Method' }) -- Method definitions.
h('@method.call', { link = 'Method' }) -- Method calls.

h('Macro', { fg = jbp.red1 })

-- will override Special colors, so we just link to it since in most cases
-- constructors calls and definitions start with a capital letter.
h('@constructor', { fg = jbp.purple2 }) -- constructor calls and definitions: `{}` in Lua, and Java constructors.
h('@namespace', { fg = jbp.teal }) -- identifiers referring to modules and namespaces.

h('Character', { fg = jbp.red3 }) -- A character constant: 'c', '\n'
h('@character', { link = 'Character' }) -- Character literals: `'a'` in C and .
h('@character.special', { link = 'Special' }) -- Special characters.

h('Statement', { fg = jbp.purple1 }) -- the = and == and any statement.

h('Operator', { fg = jbp.red1 }) -- "sizeof", "+", "*"
h('@operator', { link = 'Operator' }) -- = or ==, binary or unary operators: `+`, and also `->` and `*` in C.
h('@operator.svelte', { fg = jbp.green2 })

-- comments
h('Comment', { fg = jbp.clr_75, italic = true })
h('@comment', { link = 'Comment' })
h('@spell.comment', { link = 'Comment' })
h('@lsp.type.comment', { link = 'Comment' })
h('@lsp.type.comment.lua', {})

h('SpecialChar', { link = 'Constant' }) -- special character in a constant.
h('SpecialComment', { link = 'SpecialChar' }) -- special things inside a comment.

h('DiffAdd', { fg = jbp.blue })
h('DiffChange', { fg = jbp.green2 })
h('DiffDelete', { fg = jbp.red1 })
h('DiffText', { fg = jbp.text })

-- rest of semantic tokens
h('@lsp.mod.deprecated', { strikethrough = true })

-- nvim-lspconfig and others
h('DiagnosticError', { fg = jbp.red1 })
h('DiagnosticHint', { fg = jbp.blue })
h('DiagnosticInfo', { fg = jbp.purple1 })
h('DiagnosticWarn', { fg = jbp.yellow })

h('DiagnosticVirtualTextError', { bg = jbp.bg_red1, fg = jbp.red1 })
h('DiagnosticVirtualTextHint', { bg = jbp.bg_blue, fg = jbp.blue })
h('DiagnosticVirtualTextInfo', { bg = jbp.bg_purple1, fg = jbp.purple1 })
h('DiagnosticVirtualTextWarn', { bg = jbp.bg_yellow, fg = jbp.yellow })

h('DiagnosticUnderlineError', { undercurl = true, sp = jbp.red1 })
h('DiagnosticUnderlineHint', { undercurl = true, sp = jbp.blue })
h('DiagnosticUnderlineInfo', { undercurl = true, sp = jbp.purple1 })
h('DiagnosticUnderlineWarn', { undercurl = true, sp = jbp.yellow })

h('LspReferenceRead', { bg = jbp.clr_200 }) -- When you call a function or use a method/class
h('LspReferenceText', { link = 'LspReferenceRead' })
h('LspReferenceWrite', { link = 'LspReferenceRead' })

-- https://github.com/lewis6991/gitsigns.nvim
h('GitSignsChange', { fg = jbp.purple1 })
h('GitSignsAdd', { fg = jbp.blue })
h('GitSignsDelete', { fg = jbp.red2 })

-- https://github.com/lvimuser/lsp-inlayhints.nvim
h('LspInlayHint', { bg = jbp.bg_med, fg = jbp.plain })

-- https://github.com/lukas-reineke/indent-blankline.nvim
h('IndentBlanklineChar', { fg = jbp.clr_30 })
