local jet = {}

--stylua: ignore
jet.jbp = {
   text       = '#C6D0F5',
   plain      = '#BAC3E9',
   subtext    = '#A5ABD2',
   grey       = '#8689B9',
   dimmed1    = '#74749C',
   dimmed2    = '#63618B',
   dimmed3    = '#534F79', -- Used for comments, foldtext and identation/whitespaces spaces
   fg_dim     = '#3D3A56',
   bg_high    = '#26233A',
   bg_med     = '#1F1D2E',
   bg_base    = '#1A1724',
   bg_low     = '#15121D',

   red0       = '#EB6F92',
   red1       = '#EBA0AC',
   orange0    = '#FF9E64',
   orange1    = '#FAB387',
   yellow     = '#F6C177',
   green0     = '#7ebdb6', -- goaway green
   teal       = '#3e8fb0',
   blue       = '#87B0F9',
   purple0    = '#9D86B9',

   bg_red0    = '#2f161d',
   bg_yellow  = '#312718',
   bg_blue    = '#1b2332',
   bg_purple0 = '#2f2837',
}

function jet.h(name, T)
   vim.api.nvim_set_hl(0, name, T)
end

jet.h('ColorColumn', { bg = jet.jbp.bg_high })
jet.h('Conceal', {})
-- jet.h('Cursor', {}) -- Character under the cursor.
-- jet.h('lCursor', {}) -- Character under the cursor when |language-mapping| is used (see 'guicursor').
-- jet.h('CursorIM', {}) -- Like Cursor, but used when in IME mode. |CursorIM|.
jet.h('Directory', { fg = jet.jbp.blue }) -- Directories in NetRW.
-- jet.h('TermCursor', {}) -- Cursor in a focused terminal.
-- jet.h('TermCursorNC', {}) -- Cursor in a unfocused terminal.

jet.h('CursorColumn', { bg = jet.jbp.bg_med })
jet.h('CursorLine', { bg = jet.jbp.bg_med })
jet.h('CursorLineFold', { bg = jet.jbp.bg_med, fg = jet.jbp.fg_dim })
jet.h('CursorLineNr', { bg = jet.jbp.bg_med, fg = jet.jbp.text }) -- Current position on gutter.
jet.h('CursorLineSign', { link = 'CursorLineNr' })

jet.h('FoldColumn', { bg = jet.jbp.bg_base, fg = jet.jbp.fg_dim }) -- Column besides gutter.
jet.h('Folded', { bg = jet.jbp.bg_low, fg = jet.jbp.subtext }) -- Folded lines.
jet.h('SignColumn', { bg = jet.jbp.bg_low }) -- Where linting and errors popup

jet.h('LineNr', { bg = jet.jbp.bg_base, fg = jet.jbp.fg_dim }) -- Line number column, gutter.
-- jet.h('LineNrAbove', { fg = jet.jbp.fg_dim, bg = jet.jbp.bg_med })
-- jet.h('LineNrBelow', { fg = jet.jbp.fg_dim, bg = jet.jbp.bg_med })

jet.h('MatchParen', { bg = jet.jbp.orange0 })

jet.h('ModeMsg', { fg = jet.jbp.subtext }) -- The 'showmode' message (e.g., '-- INSERT --') uses this.
jet.h('MsgArea', { link = 'ModeMsg' }) -- Area for messages and cmdline, `/` and `:`.
jet.h('MsgSeparator', { link = 'ModeMsg' })
jet.h('MoreMsg', { link = 'ModeMsg' }) -- |more-prompt|

jet.h('Normal', { bg = jet.jbp.bg_base })
jet.h('NormalFloat', { link = 'Normal' })
jet.h('NormalNC', { bg = jet.jbp.bg_low })
jet.h('EndOfBuffer', { bg = jet.jbp.bg_low }) -- Filler lines (~) after the end of the buffer.

jet.h('Pmenu', { bg = jet.jbp.bg_base, fg = jet.jbp.subtext }) -- The non-selected entries of a completion menu, normal item.
jet.h('PmenuSel', { bg = jet.jbp.bg_high, fg = jet.jbp.subtext, blend = 0 }) -- Selected item.
jet.h('PmenuSbar', { bg = jet.jbp.bg_high, fg = jet.jbp.subtext }) -- Scrollbar
jet.h('PmenuThumb', { bg = jet.jbp.grey }) -- Thumb of the scrollbar.

jet.h('Question', { fg = jet.jbp.subtext }) -- |hit-enter| prompt and yes/no questions.
jet.h('QuickFixLine', { bg = jet.jbp.orange1, fg = jet.jbp.bg_low, nocombine = true }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

jet.h('Search', { bg = jet.jbp.orange1, fg = jet.jbp.bg_high }) -- Last search patterns
jet.h('IncSearch', { bg = jet.jbp.green0, fg = jet.jbp.bg_high }) -- Current search pattern when searching with / and with :s///
jet.h('CurSearch', { bg = jet.jbp.blue, fg = jet.jbp.bg_high }) -- Current search match under the cursor
jet.h('Substitute', { bg = jet.jbp.purple0, fg = jet.jbp.bg_base }) -- :substitute or :s///gc replacement text highlighting

jet.h('Special', { fg = jet.jbp.grey }) -- Any special symbol, sometimes it could be {} curly braces/brackets and also `NOTE:`
jet.h('SpecialKey', { link = 'Special' }) -- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace.

jet.h('Visual', { bg = jet.jbp.bg_high, nocombine = true }) -- Visual mode selection.
jet.h('VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".

jet.h('Whitespace', { fg = jet.jbp.fg_dim }) -- Listchars.
jet.h('NonText', { fg = jet.jbp.dimmed2 }) -- Used in showbreak, listchars and virtualtext.

jet.h('StatusLine', { bg = jet.jbp.bg_low, fg = jet.jbp.bg_low })
jet.h('StatusLineBlue', { bg = jet.jbp.bg_low, fg = jet.jbp.blue })
jet.h('StatusLineNC', { link = 'EndOfBuffer' })
-- -- WinBar WinBarNC

jet.h('VertSplit', { bg = jet.jbp.bg_base, fg = jet.jbp.grey }) -- Used for splits, also used for completion menus
jet.h('WinSeperator', { link = 'VertSplit' }) -- Separators between window splits.

-- jet.h('SpellBad', { link = 'Special' }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
-- jet.h('SpellCap', { link = 'Special' }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
-- jet.h('SpellLocal', { link = 'Special' }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
-- jet.h('SpellRare', { link = 'Special' }) -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

-- jet.h('TabLine', {}) -- Tab pages line, not active tab page label.
-- jet.h('TabLineFill', {}) -- TabLineFill	Tab pages line, where there are no labels.
-- jet.h('TabLineSel', {}) -- Tab pages line, active tab page label.

-- jet.h('WildMenu', {}) -- Current match in 'wildmenu' completion.
-- jet.h('WinBar', {}) -- Window bar of current window.
-- jet.h('WinBarNC', {}) -- Window bar of not-current windows.

jet.h('Menu', { fg = jet.jbp.text }) -- Current font, background and foreground colors of the menus.  Also used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.
jet.h('Scrollbar', { fg = jet.jbp.grey }) -- Current background and foreground of the main window's scrollbars.  Applicable highlight arguments: guibg, guifg.
jet.h('Tooltip', { link = 'Menu' }) -- Current font, background and foreground of the tooltips.  Applicable highlight arguments: font, guibg, guifg.

jet.h('@parameter', { fg = jet.jbp.red1 }) -- Parameters of a function.
jet.h('@parameter.reference', { link = '@parameter' }) -- References to parameters of a function. I don't know where this is applied

jet.h('@preproc', { fg = jet.jbp.purple0 }) -- Preprocessor #if, #else, #endif, etc.

jet.h('@field', { fg = jet.jbp.green0 }) -- Object and struct fields.
jet.h('@property', { link = '@field' })

jet.h('Float', { fg = jet.jbp.red0 }) -- A floating point constant: 2.3e10
jet.h('@float', { link = 'Float' }) -- Floating-point number literals.

jet.h('Delimiter', { fg = jet.jbp.green0 }) -- . and ,

jet.h('@punctuation.bracket', { fg = jet.jbp.dimmed3 }) -- () Brackets, braces, parentheses, etc.
jet.h('@punctuation.delimiter', { link = 'Delimiter' }) -- Punctuation delimiters: Periods, commas, semicolons, etc.
jet.h('@punctuation.special', { link = 'Special' }) -- Special punctuation that doesn't fit into the previous categories.

jet.h('StorageClass', { fg = jet.jbp.orange0 })
jet.h('@storageclass', { link = 'StorageClass' }) -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc. This variable doesn't work

jet.h('Repeat', { fg = jet.jbp.purple0 }) -- for and while loops
jet.h('@repeat', { link = 'Repeat' }) -- Keywords related to loops: `for`, `while`, etc.

jet.h('Type', { fg = jet.jbp.teal }) -- (preferred) int, long, char, etcp.
jet.h('@type', { link = 'Type' }) -- Type (and class) definitions and annotations.
jet.h('@type.builtin', { link = 'Type' }) -- Built-in types: `i32` in Rust.
jet.h('@type.definition', { fg = jet.jbp.blue }) -- Type definitions, e.g. `typedef` in C.
jet.h('@type.qualifier', { fg = jet.jbp.blue }) -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.

jet.h('Identifier', { fg = jet.jbp.plain }) -- (preferred) any variable name

jet.h('@variable', { link = 'Identifier' }) -- Variable names that don't fit into other categories, like `vim` in vim.api.
jet.h('@variable.builtin', { fg = jet.jbp.dimmed1 }) -- Variable names defined by the language: `this` or `self` in Javascript.

jet.h('@attribute', { fg = jet.jbp.red1 }) -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.

jet.h('Boolean', { fg = jet.jbp.orange1 })
jet.h('@boolean', { link = 'Boolean' }) -- Boolean literals: `True` and `False` in Python.

jet.h('String', { fg = jet.jbp.yellow })
jet.h('@string', { link = 'String' }) -- String literals.
jet.h('@string.regex', { fg = jet.jbp.orange1 }) -- Regular expression literals.
jet.h('@string.escape', { fg = jet.jbp.orange1 }) -- Escape characters within a string: `\n`, `\t`, etc.
jet.h('@string.special', { link = 'Special' }) -- Strings with special meaning that don't fit into the previous categories.

jet.h('@symbol', {}) -- Identifiers referring to symbols or atoms.

jet.h('Number', { fg = jet.jbp.orange1 })
jet.h('@number', { link = 'Number' }) -- Numeric literals that don't fit into other categories.

jet.h('Constant', { fg = jet.jbp.red0 }) -- NOTE: to self, this changes the name in -> TODO(santigo-zero):
jet.h('@constant', { fg = jet.jbp.red1 }) -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python and emmylua annotations in lua
jet.h('@constant.builtin', { fg = jet.jbp.orange1 }) -- Built-in constant values: `nil` in Lua.
jet.h('@constant.macro', { fg = jet.jbp.red0 }) -- Constants defined by macros: `NULL` in C.

jet.h('Conditional', { fg = jet.jbp.purple0 }) -- if, then, else, endif, switch, etc.
jet.h('@conditional', { link = 'Conditional' }) -- Keywords related to conditionals: `if`, `when`, `cond`, etc.

jet.h('Error', { fg = jet.jbp.red0 }) -- Any erroneous construct
jet.h('ErrorMsg', { link = 'Error' }) -- Error messages in the cmdline
jet.h('@error', { link = 'ErrorMsg' }) -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
jet.h('WarningMsg', { fg = jet.jbp.yellow }) -- Warning messages.

jet.h('Todo', { fg = jet.jbp.purple0, bold = true })
jet.h('@todo', { link = 'Todo' }) -- TODO.

jet.h('@text.note', { fg = jet.jbp.blue, bold = true }) -- NOTE: INUPPERCASE: -- The italic = true affects @todo for some reason
jet.h('@text.warning', { link = 'Todo' }) -- Text representation of a warning note. This affecs @todo hl group for some reason
jet.h('@text.danger', { link = 'WarningMsg' }) -- FIXME Text representation of a danger note.

-- TODO:
-- jet.h('TSDebug', {}) -- TODO(santigo-zero): Fix this, where it's being used I don't know. Debugging statements.
-- jet.h('TSDefine', {}) -- Preprocessor #define statements.
jet.h('@tag', { fg = jet.jbp.purple0 }) -- Tags like HTML tag names.
-- jet.h('TSTagAttribute', {}) -- HTML tag attributes.
jet.h('@tag.delimiter', { fg = jet.jbp.teal }) -- Tag delimiters like `<` `>` `/`.
-- jet.h('TSText', {}) -- Non-structured text. Like text in a markup language.
-- jet.h('TSStrong', {}) -- Text to be represented in bold.
-- jet.h('TSEmphasis', {}) -- Text to be represented with emphasis.
-- jet.h('TSUnderline', {}) -- Text to be represented with an underline.
-- jet.h('TSStrike', { link = 'Title' }) -- Strikethrough text.
jet.h('Title', { fg = jet.jbp.purple0 }) -- Titles for output from ":set all", ":autocmd", also plugins use it for some windows.
jet.h('@text.title', { link = 'Title' }) -- Text that is part of a title.
-- jet.h('TSLiteral', {}) -- Literal or verbatim text.
-- jet.h('TSURI', {}) -- URIs like hyperlinks or email addresses.
-- jet.h('TSMath', {}) -- Math environments like LaTeX's `$ ... $`.
jet.h('@text.reference', { fg = jet.jbp.red0 }) -- Help pages: Footnotes, text references, citations, etc.
-- jet.h('TSEnvironment', {}) -- Text environments of markup languages.
-- jet.h('TSEnvironmentName', {}) -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.

-- Zsh
jet.h('zshSubst', { fg = jet.jbp.red0 })
jet.h('zshDeref', { fg = jet.jbp.red0 })
jet.h('zshString', { link = 'String' })
jet.h('zshShortDeref', { link = 'Constant' })
jet.h('zshPreProc', { link = 'Comment' })
jet.h('zshTypes', { link = 'zshKeyword' })

jet.h('Exception', { fg = jet.jbp.purple0 }) -- try, catch, throw
jet.h('@exception', { link = 'Exception' }) -- Exception related keywords: `try`, `except`, `finally` in Python.

jet.h('Function', { fg = jet.jbp.purple0 }) -- Function name (also: methods for classes)
jet.h('@function', { link = 'Function' }) -- Function definitions.
jet.h('@function.macro', { fg = jet.jbp.purple0 }) -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.

jet.h('@function.call', { fg = jet.jbp.blue }) -- Function calls.
jet.h('@function.builtin', { link = '@function.call' }) -- Built-in functions: `print` in Lua.

jet.h('Include', { fg = jet.jbp.purple0 }) -- from ... import ...
jet.h('@include', { link = 'Include' }) -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.

jet.h('Keyword', { fg = jet.jbp.purple0 }) -- Any other keyword
jet.h('@keyword', { link = 'Keyword' }) -- Keywords that don't fit into other categories.
jet.h('@keyword.function', { fg = jet.jbp.purple0, italic = true }) -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
jet.h('@keyword.operator', { fg = jet.jbp.red0 }) -- Unary and binary operators that are English words: `and`, `or` in Python and Lua; `sizeof` in C.
jet.h('@keyword.return', { fg = jet.jbp.purple0 }) -- Keywords like `return` and `yield`.

jet.h('Label', { fg = jet.jbp.green0 }) -- case, default, etc.
jet.h('@label', { link = 'Label' }) -- GOTO labels: `label:` in C, and `::label::` in Lua, and *thing* in help pages.

jet.h('Method', { fg = jet.jbp.blue })
jet.h('@method', { link = 'Method' }) -- Method definitions.
jet.h('@method.call', { link = 'Method' }) -- Method calls.

jet.h('Macro', { fg = jet.jbp.red0 })

-- Will override Special colors, so we just link to it since in most cases
-- constructors calls and definitions start with a capital letter.
jet.h('@constructor', { link = 'Special' }) -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
jet.h('@namespace', { fg = jet.jbp.teal }) -- Identifiers referring to modules and namespaces.

jet.h('Character', { fg = jet.jbp.red1 }) -- A character constant: 'c', '\n'
jet.h('@character', { link = 'Character' }) -- Character literals: `'a'` in C and .
jet.h('@character.special', { link = 'Special' }) -- Special characters.

jet.h('Statement', { fg = jet.jbp.red0 }) -- The = and == and any statement.

jet.h('Operator', { fg = jet.jbp.red0 }) -- "sizeof", "+", "*"
jet.h('@operator', { link = 'Operator' }) -- = or ==, Binary or unary operators: `+`, and also `->` and `*` in C.

jet.h('Comment', { fg = jet.jbp.dimmed3, italic = true })
jet.h('@comment', { link = 'Comment' }) -- Line comments and block comments.

jet.h('SpecialChar', { link = 'Constant' }) -- Special character in a constant.
jet.h('SpecialComment', { link = 'SpecialChar' }) -- Special things inside a comment.

jet.h('DiffAdd', { fg = jet.jbp.blue })
jet.h('DiffChange', { fg = jet.jbp.green0 })
jet.h('DiffDelete', { fg = jet.jbp.red0 })
jet.h('DiffText', { fg = jet.jbp.text })

-- Used by nvim-lspconfig and others
jet.h('DiagnosticError', { fg = jet.jbp.red0 })
jet.h('DiagnosticHint', { fg = jet.jbp.blue })
jet.h('DiagnosticInfo', { fg = jet.jbp.purple0 })
jet.h('DiagnosticWarn', { fg = jet.jbp.yellow })

jet.h('DiagnosticVirtualTextError', { bg = jet.jbp.bg_red0, fg = jet.jbp.red0 })
jet.h('DiagnosticVirtualTextHint', { bg = jet.jbp.bg_blue, fg = jet.jbp.blue })
jet.h('DiagnosticVirtualTextInfo', { bg = jet.jbp.bg_purple0, fg = jet.jbp.purple0 })
jet.h('DiagnosticVirtualTextWarn', { bg = jet.jbp.bg_yellow, fg = jet.jbp.yellow })

jet.h('DiagnosticUnderlineError', { undercurl = true, sp = jet.jbp.red0 })
jet.h('DiagnosticUnderlineHint', { undercurl = true, sp = jet.jbp.blue })
jet.h('DiagnosticUnderlineInfo', { undercurl = true, sp = jet.jbp.purple0 })
jet.h('DiagnosticUnderlineWarn', { undercurl = true, sp = jet.jbp.yellow })

jet.h('LspReferenceRead', { fg = jet.jbp.orange1, bg = jet.jbp.bg_high }) -- When you call a function or use a method/class
jet.h('LspReferenceText', { link = 'LspReferenceRead' })
jet.h('LspReferenceWrite', { link = 'LspReferenceRead' })

-- https://github.com/lewis6991/gitsigns.nvim
jet.h('GitSignsChange', { fg = jet.jbp.purple0 })
jet.h('GitSignsAdd', { fg = jet.jbp.blue })
jet.h('GitSignsDelete', { fg = jet.jbp.red1 })

-- https://github.com/lvimuser/lsp-inlayhints.nvim
jet.h('LspInlayHint', { bg = jet.jbp.bg_med, fg = jet.jbp.teal })

-- https://github.com/theHamsta/nvim-semantic-tokens
jet.h('LspClass', { link = '@type' }) -- @constant or @type or @constructor
-- jet.h('LspComment', { link = '@comment' })
jet.h('LspEnum', { link = '@constant' }) -- @constant or @type
jet.h('LspEnumMember', { link = '@constant' }) -- @field or @property or @constant
jet.h('LspEvent', { link = '@constant' })
jet.h('LspFunction', { link = '@function' })
jet.h('LspInterface', { link = '@constant' })
jet.h('LspKeyword', { link = '@keyword' })
jet.h('LspMacro', { link = '@constant.macro' })
jet.h('LspMethod', { link = '@method' })
-- jet.h('LspModifier', { link = 'TSModifier' })
jet.h('LspNamespace', { link = '@namespace' })
jet.h('LspNumber', { link = '@number' })
jet.h('LspParameter', { link = '@parameter' })
jet.h('LspProperty', { link = '@property' })
jet.h('LspString', { link = '@string' })
jet.h('LspStruct', { link = '@constant' }) -- @structure or @constant
jet.h('LspType', { link = '@type' })
jet.h('LspTypeParameter', { link = '@type' })
jet.h('LspVariable', { link = '@variable' })

jet.h('LspRegexp', { link = '@string.regex' })
jet.h('LspOperator', { link = '@operator' })
jet.h('LspDecorator', { link = '@symbol' })
jet.h('LspDeprecated', { link = '@text.strike' })

return jet
