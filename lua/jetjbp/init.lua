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

-- hlgr base
vim.api.nvim_set_hl(0, 'Normal', { fg = jbp.clr_100, bg = jbp.clr_20 })
vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = jbp.clr_20 })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = jbp.clr_25, fg = jbp.clr_85 }) -- Filler lines (~) after the end of the buffer.
vim.api.nvim_set_hl(0, 'MatchParen', { bg = jbp.orange1 })
vim.api.nvim_set_hl(0, 'LineNr', { fg = jbp.clr_65 }) -- Line number column, gutter.
vim.api.nvim_set_hl(0, 'LineNrAbove', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = jbp.clr_20 }) -- Where linting and errors popup
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = jbp.clr_25 })
vim.api.nvim_set_hl(0, 'Conceal', {})
vim.api.nvim_set_hl(0, 'Directory', { fg = jbp.blue }) -- Directories in NetRW.
vim.api.nvim_set_hl(0, 'netrwExe', { fg = jbp.green2 }) -- Directories in NetRW.
vim.api.nvim_set_hl(0, 'ModeMsg', { fg = jbp.clr_90 }) -- The 'showmode' message (e.g., '-- INSERT --') uses this.
vim.api.nvim_set_hl(0, 'MsgArea', { link = 'ModeMsg' }) -- Area for messages and cmdline, `/` and `:`.
vim.api.nvim_set_hl(0, 'MsgSeparator', { link = 'ModeMsg' })
vim.api.nvim_set_hl(0, 'MoreMsg', { link = 'ModeMsg' }) -- |more-prompt|
vim.api.nvim_set_hl(0, 'Pmenu', { bg = jbp.clr_40, fg = jbp.clr_95 }) -- The non-selected entries of a completion menu, normal item.
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = jbp.clr_55, fg = jbp.clr_300, blend = 0 }) -- Selected item.
vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = jbp.clr_50 }) -- Scrollbar
vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = jbp.clr_80 }) -- Thumb of the scrollbar.
vim.api.nvim_set_hl(0, 'Question', { fg = jbp.clr_95 }) -- |hit-enter| prompt and yes/no questions.
vim.api.nvim_set_hl(0, 'QuickFixLine', { bg = jbp.orange2, fg = jbp.clr_95, nocombine = true }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
vim.api.nvim_set_hl(0, 'Special', { fg = jbp.orange2, undercurl = false }) -- Any special symbol, sometimes it could be {} curly braces/brackets and also `NOTE:`
vim.api.nvim_set_hl(0, 'SpecialKey', { link = 'Special' }) -- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace.
vim.api.nvim_set_hl(0, 'Visual', { bg = jbp.clr_60, reverse = true, nocombine = true }) -- Visual mode selection.
vim.api.nvim_set_hl(0, 'VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".
vim.api.nvim_set_hl(0, 'Whitespace', { fg = jbp.clr_95 }) -- Listchars.
vim.api.nvim_set_hl(0, 'NonText', { link = 'Comment' }) -- Used in showbreak, listchars and virtualtext.
-- -- WinBar WinBarNC
vim.api.nvim_set_hl(0, 'VertSplit', { fg = jbp.clr_300 }) -- Used for splits, also used for completion menus
vim.api.nvim_set_hl(0, 'WinSeperator', { link = 'VertSplit' }) -- Separators between window splits.

-- hlgr search
vim.api.nvim_set_hl(0, 'Search', { bg = jbp.orange2, fg = jbp.clr_05 }) -- Last search patterns
vim.api.nvim_set_hl(0, 'IncSearch', { bg = jbp.green2, fg = jbp.clr_05 }) -- Current search pattern when searching with / and with :s///
vim.api.nvim_set_hl(0, 'CurSearch', { bg = jbp.blue, fg = jbp.clr_05 }) -- Current search match under the cursor
vim.api.nvim_set_hl(0, 'Substitute', { bg = jbp.purple1, fg = jbp.clr_05 }) -- :substitute or :s///gc replacement text highlighting

-- hlgr spell
vim.api.nvim_set_hl(0, 'SpellBad', { link = 'Special' }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
vim.api.nvim_set_hl(0, 'SpellCap', { link = 'Special' }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
vim.api.nvim_set_hl(0, 'SpellLocal', { link = 'Special' }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
vim.api.nvim_set_hl(0, 'SpellRare', { link = 'Special' }) -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

-- vim.api.nvim_set_hl(0, 'TabLine', {}) -- Tab pages line, not active tab page label.
-- vim.api.nvim_set_hl(0, 'TabLineFill', {}) -- TabLineFill	Tab pages line, where there are no labels.
-- vim.api.nvim_set_hl(0, 'TabLineSel', {}) -- Tab pages line, active tab page label.
-- vim.api.nvim_set_hl(0, 'WildMenu', {}) -- Current match in 'wildmenu' completion.
-- vim.api.nvim_set_hl(0, 'WinBar', {}) -- Window bar of current window.
-- vim.api.nvim_set_hl(0, 'WinBarNC', {}) -- Window bar of not-current windows.
vim.api.nvim_set_hl(0, 'Menu', { fg = jbp.text }) -- Current font, background and foreground colors of the menus.  Also used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.
vim.api.nvim_set_hl(0, 'Scrollbar', { fg = jbp.steel }) -- Current background and foreground of the main window's scrollbars.  Applicable highlight arguments: guibg, guifg.
vim.api.nvim_set_hl(0, 'Tooltip', { link = 'Menu' }) -- Current font, background and foreground of the tooltips.  Applicable highlight arguments: font, guibg, guifg.
vim.api.nvim_set_hl(0, '@parameter', { fg = jbp.red3 }) -- Parameters of a function.
vim.api.nvim_set_hl(0, '@parameter.reference', { link = '@parameter' }) -- References to parameters of a function. I don't know where this is applied
vim.api.nvim_set_hl(0, '@preproc', { fg = jbp.purple1 }) -- Preprocessor #if, #else, #endif, etc.
vim.api.nvim_set_hl(0, '@lsp.type.property', { fg = jbp.green2 }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@field', { fg = jbp.green2 }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@property', { link = '@field' })
vim.api.nvim_set_hl(0, 'Float', { fg = jbp.red1 }) -- A floating point constant: 2.3e10
vim.api.nvim_set_hl(0, '@float', { link = 'Float' }) -- Floating-point number literals.
vim.api.nvim_set_hl(0, 'Delimiter', { fg = jbp.yellow }) -- . and ,
vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = jbp.dimmed3 }) -- () Brackets, braces, parentheses, etc.
vim.api.nvim_set_hl(0, '@punctuation.bracket.svelte', { fg = jbp.red2 }) -- () Brackets, braces, parentheses, etc.
vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' }) -- Punctuation delimiters: Periods, commas, semicolons, etc.
vim.api.nvim_set_hl(0, '@punctuation.special', { fg = jbp.orange1 }) -- Special punctuation that doesn't fit into the previous categories.
vim.api.nvim_set_hl(0, 'StorageClass', { fg = jbp.orange1 })
vim.api.nvim_set_hl(0, '@storageclass', { link = 'StorageClass' }) -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc. This variable doesn't work

-- hlgr cursor
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = jbp.clr_35 })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = jbp.clr_35 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = jbp.clr_300, bg = jbp.clr_35 }) -- Current position on gutter.
vim.api.nvim_set_hl(0, 'CursorLineSign', { link = 'CursorLineNr' })
vim.api.nvim_set_hl(0, 'CursorLineFold', { bg = jbp.clr_35 })

-- hlgr folds
vim.api.nvim_set_hl(0, 'FoldColumn', { bg = jbp.clr_25, fg = jbp.clr_70 }) -- Column besides gutter.
vim.api.nvim_set_hl(0, 'Folded', { fg = jbp.clr_05, bg = jbp.clr_100 }) -- Folded lines.

-- hlgr statusline
vim.api.nvim_set_hl(0, 'StatusLine', { bg = jbp.clr_30, fg = jbp.clr_100 })
vim.api.nvim_set_hl(0, 'StatusLineNC', { link = 'EndOfBuffer' })

-- hlgr loops hlgr for hlgr while
vim.api.nvim_set_hl(0, 'Repeat', { fg = jbp.purple1 })
vim.api.nvim_set_hl(0, '@repeat', { link = 'Repeat' })

vim.api.nvim_set_hl(0, 'Type', { fg = jbp.teal }) -- (preferred) int, long, char, etcp.
vim.api.nvim_set_hl(0, '@type', { link = 'Type' }) -- Type (and class) definitions and annotations.
vim.api.nvim_set_hl(0, '@type.builtin', { link = 'Type' }) -- Built-in types: `i32` in Rust.
vim.api.nvim_set_hl(0, '@type.definition', { fg = jbp.blue }) -- Type definitions, e.g. `typedef` in C.
vim.api.nvim_set_hl(0, '@type.qualifier', { fg = jbp.blue }) -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.

vim.api.nvim_set_hl(0, 'Identifier', { fg = jbp.clr_100 }) -- (preferred) any variable name

-- vim.api.nvim_set_hl(0, '@none', { undercurl = true })
vim.api.nvim_set_hl(0, '@variable', { link = 'Identifier' }) -- Variable names that don't fit into other categories, like `vim` in vim.api.

vim.api.nvim_set_hl(0, '@variable.builtin', { fg = jbp.red3 }) -- Variable names defined by the language: `this` or `self` in Javascript and Python.
vim.api.nvim_set_hl(0, '@variable.builtin.python', { fg = jbp.teal }) -- Variable names defined by the language: `this` or `self` in Javascript and Python.

vim.api.nvim_set_hl(0, '@attribute', { fg = jbp.red3 }) -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.

vim.api.nvim_set_hl(0, 'Boolean', { fg = jbp.orange2 })
vim.api.nvim_set_hl(0, '@boolean', { link = 'Boolean' }) -- Boolean literals: `True` and `False` in Python.

vim.api.nvim_set_hl(0, 'String', { fg = jbp.yellow })
vim.api.nvim_set_hl(0, '@string', { link = 'String' }) -- String literals.
-- vim.api.nvim_set_hl(0, '@string.svelte', { link = 'Comment' }) -- String literals.
vim.api.nvim_set_hl(0, '@string.regex', { fg = jbp.orange2 }) -- Regular expression literals.
vim.api.nvim_set_hl(0, '@string.escape', { fg = jbp.orange2 }) -- Escape characters within a string: `\n`, `\t`, etc.
vim.api.nvim_set_hl(0, '@string.special', { link = 'Special' }) -- Strings with special meaning that don't fit into the previous categories.

vim.api.nvim_set_hl(0, '@symbol', {}) -- Identifiers referring to symbols or atoms.

vim.api.nvim_set_hl(0, 'Number', { fg = jbp.orange2 })
vim.api.nvim_set_hl(0, '@number', { link = 'Number' }) -- Numeric literals that don't fit into other categories.

vim.api.nvim_set_hl(0, 'Constant', { fg = jbp.red1 }) -- NOTE: to self, this changes the name in -> TODO(santigo-zero):
vim.api.nvim_set_hl(0, '@constant', { fg = jbp.red3 }) -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python and emmylua annotations in lua
vim.api.nvim_set_hl(0, '@constant.builtin', { fg = jbp.orange2 }) -- Built-in constant values: `nil` in Lua.
vim.api.nvim_set_hl(0, '@constant.macro', { fg = jbp.red1 }) -- Constants defined by macros: `NULL` in C.

vim.api.nvim_set_hl(0, 'Conditional', { fg = jbp.purple1 }) -- if, then, else, endif, switch, etc.
vim.api.nvim_set_hl(0, '@conditional', { link = 'Conditional' }) -- Keywords related to conditionals: `if`, `when`, `cond`, etc.

vim.api.nvim_set_hl(0, 'Error', { fg = jbp.red1 }) -- Any erroneous construct
vim.api.nvim_set_hl(0, 'ErrorMsg', { link = 'Error' }) -- Error messages in the cmdline
vim.api.nvim_set_hl(0, '@error', { link = 'ErrorMsg' }) -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = jbp.yellow }) -- Warning messages.

vim.api.nvim_set_hl(0, 'Todo', { fg = jbp.purple1, bold = true })
vim.api.nvim_set_hl(0, '@todo', { link = 'Todo' }) -- TODO(santigo-zero): Test.
vim.api.nvim_set_hl(0, '@text.todo.comment', { link = 'Todo' }) -- TODO(santigo-zero): Test.

vim.api.nvim_set_hl(0, '@text', { fg = jbp.text })
vim.api.nvim_set_hl(0, '@text.note', { fg = jbp.blue }) -- NOTE: INUPPERCASE: -- The italic = true affects @todo for some reason
vim.api.nvim_set_hl(0, '@text.warning', { link = 'Todo' }) -- Text representation of a warning note. This affecs @todo hl group for some reason
vim.api.nvim_set_hl(0, '@text.danger', { link = 'WarningMsg' }) -- FIXME Text representation of a danger note.

-- vim.api.nvim_set_hl(0, 'TSDebug', {}) -- TODO(santigo-zero): Fix this, where it's being used I don't know. Debugging statements.
-- vim.api.nvim_set_hl(0, 'TSDefine', {}) -- Preprocessor #define statements.
vim.api.nvim_set_hl(0, '@tag', { fg = jbp.purple1 }) -- Tags like HTML tag names.
vim.api.nvim_set_hl(0, '@tag.attribute', { fg = jbp.green2 }) -- HTML tag attributes like classes and ids
vim.api.nvim_set_hl(0, '@tag.delimiter', { fg = jbp.teal }) -- Tag delimiters like `<` `>` `/`.
-- vim.api.nvim_set_hl(0, 'TSStrong', {}) -- Text to be represented in bold.
-- vim.api.nvim_set_hl(0, 'TSEmphasis', {}) -- Text to be represented with emphasis.
-- vim.api.nvim_set_hl(0, 'TSUnderline', {}) -- Text to be represented with an underline.
-- vim.api.nvim_set_hl(0, 'TSStrike', { link = 'Title' }) -- Strikethrough text.
vim.api.nvim_set_hl(0, 'Title', { fg = jbp.orange1 }) -- Titles for output from ":set all", ":autocmd", also plugins use it for some windows.
vim.api.nvim_set_hl(0, '@text.title', { link = 'Title' }) -- Text that is part of a title.
-- vim.api.nvim_set_hl(0, 'TSLiteral', {}) -- Literal or verbatim text.
-- vim.api.nvim_set_hl(0, 'TSURI', {}) -- URIs like hyperlinks or email addresses.
-- vim.api.nvim_set_hl(0, 'TSMath', {}) -- Math environments like LaTeX's `$ ... $`.
vim.api.nvim_set_hl(0, '@text.reference', { fg = jbp.red1 }) -- Help pages: Footnotes, text references, citations, etc.
-- vim.api.nvim_set_hl(0, 'TSEnvironment', {}) -- Text environments of markup languages.
-- vim.api.nvim_set_hl(0, 'TSEnvironmentName', {}) -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.

-- Zsh
vim.api.nvim_set_hl(0, 'zshSubst', { fg = jbp.red1 })
vim.api.nvim_set_hl(0, 'zshDeref', { fg = jbp.red1 })
vim.api.nvim_set_hl(0, 'zshString', { link = 'String' })
vim.api.nvim_set_hl(0, 'zshShortDeref', { link = 'Constant' })
vim.api.nvim_set_hl(0, 'zshPreProc', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'zshTypes', { link = 'zshKeyword' })

vim.api.nvim_set_hl(0, 'Exception', { fg = jbp.purple1 }) -- try, catch, throw
vim.api.nvim_set_hl(0, '@exception', { link = 'Exception' }) -- Exception related keywords: `try`, `except`, `finally` in Python.

vim.api.nvim_set_hl(0, 'Function', { fg = jbp.purple2 }) -- Function name (also: methods for classes)
vim.api.nvim_set_hl(0, '@function', { link = 'Function' }) -- Function definitions.
vim.api.nvim_set_hl(0, '@function.macro', { fg = jbp.purple1 }) -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.

vim.api.nvim_set_hl(0, '@function.call', { fg = jbp.blue }) -- Function calls.
vim.api.nvim_set_hl(0, '@function.builtin', { fg = jbp.purple2 }) -- Built-in functions: `print` in Lua.

vim.api.nvim_set_hl(0, 'Include', { fg = jbp.blue }) -- from ... import ...
vim.api.nvim_set_hl(0, '@include', { link = 'Include' }) -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.

vim.api.nvim_set_hl(0, 'Keyword', { fg = jbp.purple1 }) -- Any other keyword
vim.api.nvim_set_hl(0, '@keyword', { link = 'Keyword' }) -- Keywords that don't fit into other categories.
-- vim.api.nvim_set_hl(0, '@keyword.svelte', { fg = jbp.red2 }) -- Keywords that don't fit into other categories.
vim.api.nvim_set_hl(0, '@keyword.function', { fg = jbp.purple1, italic = true }) -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
vim.api.nvim_set_hl(0, '@keyword.operator', { fg = jbp.red1 }) -- Unary and binary operators that are English words: `and`, `or` in Python and Lua; `sizeof` in C.
vim.api.nvim_set_hl(0, '@keyword.return', { fg = jbp.purple2 }) -- Keywords like `return` and `yield`.

vim.api.nvim_set_hl(0, 'Label', { fg = jbp.green2 }) -- case, default, etc.
vim.api.nvim_set_hl(0, '@label', { link = 'Label' }) -- GOTO labels: `label:` in C, and `::label::` in Lua, and *thing* in help pages.

vim.api.nvim_set_hl(0, 'Method', { fg = jbp.blue })
vim.api.nvim_set_hl(0, '@method', { link = 'Method' }) -- Method definitions.
vim.api.nvim_set_hl(0, '@method.call', { link = 'Method' }) -- Method calls.

vim.api.nvim_set_hl(0, 'Macro', { fg = jbp.red1 })

-- will override Special colors, so we just link to it since in most cases
-- constructors calls and definitions start with a capital letter.
vim.api.nvim_set_hl(0, '@constructor', { fg = jbp.purple2 }) -- constructor calls and definitions: `{}` in Lua, and Java constructors.
vim.api.nvim_set_hl(0, '@namespace', { fg = jbp.teal }) -- identifiers referring to modules and namespaces.

vim.api.nvim_set_hl(0, 'Character', { fg = jbp.red3 }) -- A character constant: 'c', '\n'
vim.api.nvim_set_hl(0, '@character', { link = 'Character' }) -- Character literals: `'a'` in C and .
vim.api.nvim_set_hl(0, '@character.special', { link = 'Special' }) -- Special characters.

vim.api.nvim_set_hl(0, 'Statement', { fg = jbp.purple1 }) -- the = and == and any statement.

vim.api.nvim_set_hl(0, 'Operator', { fg = jbp.red1 }) -- "sizeof", "+", "*"
vim.api.nvim_set_hl(0, '@operator', { link = 'Operator' }) -- = or ==, binary or unary operators: `+`, and also `->` and `*` in C.
vim.api.nvim_set_hl(0, '@operator.svelte', { fg = jbp.green2 })

-- comments
vim.api.nvim_set_hl(0, 'Comment', { fg = jbp.clr_75, italic = true })
vim.api.nvim_set_hl(0, '@comment', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@spell.comment', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@lsp.type.comment', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@lsp.type.comment.lua', {})

vim.api.nvim_set_hl(0, 'SpecialChar', { link = 'Constant' }) -- special character in a constant.
vim.api.nvim_set_hl(0, 'SpecialComment', { link = 'SpecialChar' }) -- special things inside a comment.

vim.api.nvim_set_hl(0, 'DiffAdd', { fg = jbp.blue })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = jbp.green2 })
vim.api.nvim_set_hl(0, 'DiffDelete', { fg = jbp.red1 })
vim.api.nvim_set_hl(0, 'DiffText', { fg = jbp.text })

-- rest of semantic tokens
vim.api.nvim_set_hl(0, '@lsp.mod.deprecated', { strikethrough = true })

-- nvim-lspconfig and others
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = jbp.red1 })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = jbp.blue })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = jbp.purple1 })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = jbp.yellow })

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { bg = jbp.bg_red1, fg = jbp.red1 })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { bg = jbp.bg_blue, fg = jbp.blue })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { bg = jbp.bg_purple1, fg = jbp.purple1 })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { bg = jbp.bg_yellow, fg = jbp.yellow })

vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = jbp.red1 })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = jbp.blue })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = jbp.purple1 })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = jbp.yellow })

vim.api.nvim_set_hl(0, 'LspReferenceRead', { bg = jbp.clr_200 }) -- When you call a function or use a method/class
vim.api.nvim_set_hl(0, 'LspReferenceText', { link = 'LspReferenceRead' })
vim.api.nvim_set_hl(0, 'LspReferenceWrite', { link = 'LspReferenceRead' })

-- https://github.com/lewis6991/gitsigns.nvim
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = jbp.purple1 })
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = jbp.blue })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = jbp.red2 })

-- https://github.com/lvimuser/lsp-inlayhints.nvim
vim.api.nvim_set_hl(0, 'LspInlayHint', { bg = jbp.bg_med, fg = jbp.plain })

-- https://github.com/lukas-reineke/indent-blankline.nvim
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = jbp.clr_30 })
