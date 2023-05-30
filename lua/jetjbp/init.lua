local jbp = {
   clr_red_40 = '#ed7798',
   clr_red_50 = '#f08ea9',
   clr_red_60 = '#f3a4ba',

   clr_orange_50 = '#FF9E64',
   clr_orange_70 = '#FAB387',
   clr_yellow = '#F6C177',

   clr_purple_40 = '#B79BC3',
   clr_purple_50 = '#A17FAD',

   clr_green_50 = '#9ece6a',

   clr_goaway_green = '#8bc4c4',
   clr_teal = '#63B1B1',
   clr_azure = '#3e8fb0',
   clr_blue_30 = '#A6BFEC',
   clr_blue_40 = '#82A6E4',

   clr_bg_blue = '#1b2332',
   clr_bg_purple_50 = '#2f2837',
   clr_bg_red_50 = '#2f161d',
   clr_bg_yellow = '#312718',

   clr_grey_00 = '#fafafa',
   clr_grey_10 = '#eeeeee',
   clr_grey_20 = '#d5d5d5',
   clr_grey_30 = '#bebebe',
   clr_grey_40 = '#a5a5a5',
   clr_grey_50 = '#8b8b8b',
   clr_grey_60 = '#717171',
   clr_grey_70 = '#5f5f5f',
   clr_grey_80 = '#4c4c4c',
   clr_grey_90 = '#383838',

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

   clr_100 = '#868a9e',
   clr_150 = '#9fa4bb',
   clr_200 = '#b6bcd6',
   clr_250 = '#cdd4ee',
   clr_300 = '#e4e8f6',
   clr_350 = '#f9fafd',
   clr_400 = '#ffffff',

   -- clr_teal_l2 = '#b0d7d7',
   -- clr_teal_l1 = '#8bc4c4',
   -- clr_teal_bs = '#007f7f',
   -- clr_teal_d1 = '#006566',
   -- clr_teal_d2 = '#004c4c',
}

-- hlgr base
vim.api.nvim_set_hl(0, 'Normal', { fg = jbp.clr_100, bg = jbp.clr_20 })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = jbp.clr_20 })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = jbp.clr_25, fg = jbp.clr_85 }) -- Filler lines (~) after the end of the buffer.
vim.api.nvim_set_hl(0, 'MatchParen', { bg = jbp.clr_300, fg = jbp.clr_05 })
vim.api.nvim_set_hl(0, 'LineNr', { fg = jbp.clr_65 }) -- Line number column, gutter.
vim.api.nvim_set_hl(0, 'LineNrAbove', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { link = 'LineNr' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = jbp.clr_20 }) -- Where linting and errors popup.
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = jbp.clr_25 })
vim.api.nvim_set_hl(0, 'Conceal', {}) -- Syntax that is being affected by concealment.
vim.api.nvim_set_hl(0, 'Directory', { fg = jbp.clr_blue_40 }) -- Directories in NetRW.
vim.api.nvim_set_hl(0, 'netrwExe', { fg = jbp.clr_goaway_green }) -- Directories in NetRW.
vim.api.nvim_set_hl(0, 'ModeMsg', { bg = jbp.clr_65, fg = jbp.clr_250 }) -- The 'showmode' message (e.g., '-- INSERT --') uses this.
vim.api.nvim_set_hl(0, 'MsgArea', { bg = jbp.clr_55, fg = jbp.clr_250 }) -- Area for messages and cmdline, `/` and `:`.
vim.api.nvim_set_hl(0, 'MsgSeparator', { bg = jbp.clr_05, fg = jbp.clr_100 })
vim.api.nvim_set_hl(0, 'MoreMsg', { link = 'ModeMsg' }) -- |more-prompt|
vim.api.nvim_set_hl(0, 'Pmenu', { bg = jbp.clr_40, fg = jbp.clr_95 }) -- The non-selected entries of a completion menu, normal item.
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = jbp.clr_55, fg = jbp.clr_300, blend = 0 }) -- Selected item.
vim.api.nvim_set_hl(0, 'PmenuSbar', { bg = jbp.clr_50 }) -- Scrollbar
vim.api.nvim_set_hl(0, 'PmenuThumb', { bg = jbp.clr_80 }) -- Thumb of the scrollbar.
vim.api.nvim_set_hl(0, 'Question', { link = 'ModeMsg' }) -- |hit-enter| prompt and yes/no questions.
vim.api.nvim_set_hl(0, 'QuickFixLine', { bg = jbp.clr_orange_70, fg = jbp.clr_95, nocombine = true }) -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
vim.api.nvim_set_hl(0, 'Special', { fg = jbp.clr_orange_70, undercurl = false }) -- Any special symbol, sometimes it could be {} curly braces/brackets and also `NOTE:`
vim.api.nvim_set_hl(0, 'SpecialKey', { link = 'Special' }) -- Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace.
vim.api.nvim_set_hl(0, 'Visual', { bg = jbp.clr_60, reverse = true, nocombine = true }) -- Visual mode selection.
vim.api.nvim_set_hl(0, 'VisualNOS', { link = 'Visual' }) -- Visual mode selection when vim is "Not Owning the Selection".
vim.api.nvim_set_hl(0, 'Whitespace', { fg = jbp.clr_95 }) -- Listchars.
vim.api.nvim_set_hl(0, 'NonText', { link = 'Comment' }) -- Used in showbreak, listchars and virtualtext.
vim.api.nvim_set_hl(0, 'VertSplit', { fg = jbp.clr_300 }) -- Used for splits, also used for completion menus
vim.api.nvim_set_hl(0, 'WinSeperator', { link = 'VertSplit' }) -- Separators between window splits.
vim.api.nvim_set_hl(0, 'WinBar', { link = 'VertSplit' }) -- Separators between window splits.
vim.api.nvim_set_hl(0, 'WinBarNC', { link = 'VertSplit' }) -- Separators between window splits.

-- hlgr search
vim.api.nvim_set_hl(0, 'Search', { bg = jbp.clr_orange_70, fg = jbp.clr_05 }) -- Last search patterns
vim.api.nvim_set_hl(0, 'IncSearch', { bg = jbp.clr_goaway_green, fg = jbp.clr_05 }) -- Current search pattern when searching with / and with :s///
vim.api.nvim_set_hl(0, 'CurSearch', { bg = jbp.clr_blue_40, fg = jbp.clr_05 }) -- Current search match under the cursor
vim.api.nvim_set_hl(0, 'Substitute', { bg = jbp.clr_purple_50, fg = jbp.clr_05 }) -- :substitute or :s///gc replacement text highlighting

-- hlgr spell
vim.api.nvim_set_hl(0, 'SpellBad', { undercurl = true }) -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
vim.api.nvim_set_hl(0, 'SpellCap', { link = 'SpellBad' }) -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
vim.api.nvim_set_hl(0, 'SpellLocal', { link = 'SpellBad' }) -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
vim.api.nvim_set_hl(0, 'SpellRare', { link = 'SpellBad' }) -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.

-- vim.api.nvim_set_hl(0, 'TabLine', {}) -- Tab pages line, not active tab page label.
-- vim.api.nvim_set_hl(0, 'TabLineFill', {}) -- TabLineFill	Tab pages line, where there are no labels.
-- vim.api.nvim_set_hl(0, 'TabLineSel', {}) -- Tab pages line, active tab page label.
-- vim.api.nvim_set_hl(0, 'WildMenu', {}) -- Current match in 'wildmenu' completion.
-- vim.api.nvim_set_hl(0, 'WinBar', {}) -- Window bar of current window.
-- vim.api.nvim_set_hl(0, 'WinBarNC', {}) -- Window bar of not-current windows.
vim.api.nvim_set_hl(0, 'Menu', { fg = 'red' }) -- Current font, background and foreground colors of the menus.  Also used for the toolbar.  Applicable highlight arguments: font, guibg, guifg.
vim.api.nvim_set_hl(0, 'Scrollbar', { bg = jbp.clr_50 }) -- Current background and foreground of the main window's scrollbars.  Applicable highlight arguments: guibg, guifg.
vim.api.nvim_set_hl(0, 'Tooltip', { link = 'Menu' }) -- Current font, background and foreground of the tooltips.  Applicable highlight arguments: font, guibg, guifg.
vim.api.nvim_set_hl(0, '@parameter', { fg = jbp.clr_blue_30 }) -- Parameters of a function.
vim.api.nvim_set_hl(0, '@lsp.type.parameter', { link = '@parameter' }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@parameter.reference', { link = '@parameter' }) -- References to parameters of a function. I don't know where this is applied
vim.api.nvim_set_hl(0, '@preproc', { fg = jbp.clr_purple_50 }) -- Preprocessor #if, #else, #endif, etc.
vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@field' }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@lsp.type.class', { fg = jbp.clr_purple_40 }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@lsp.type.interface', { link = '@lsp.type.class' }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@field', { fg = jbp.clr_blue_40 }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@property', { link = '@field' })
-- vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@property' })
-- vim.api.nvim_set_hl(0, '@lsp.type.property.lua', { fg = jbp.clr_sky }) -- Object and struct fields.

-- hlgr float numbers hlgr floating numbers
vim.api.nvim_set_hl(0, 'Float', { fg = jbp.clr_red_40 }) -- A floating point constant: 2.3e10
vim.api.nvim_set_hl(0, '@float', { link = 'Float' }) -- Floating-point number literals.

-- hlgr floating windows hlgr floating pans
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = jbp.clr_60, fg = jbp.clr_90 })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = jbp.clr_60 })
vim.api.nvim_set_hl(0, 'FloatTitle', { bg = jbp.clr_60, fg = jbp.clr_300 })

vim.api.nvim_set_hl(0, 'Delimiter', { fg = jbp.clr_80 }) -- . and ,
vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' }) -- () {} []
vim.api.nvim_set_hl(0, '@punctuation.bracket.svelte', { fg = jbp.clr_red_50 }) -- () Brackets, braces, parentheses, etc.
vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' }) -- Punctuation delimiters: Periods, commas, semicolons, etc.
vim.api.nvim_set_hl(0, '@lsp.typemod.variable.definition', { link = '@punctuation.delimiter' })
vim.api.nvim_set_hl(0, '@punctuation.delimiter.markdown_inline', { fg = jbp.clr_purple_50 }) -- Punctuation delimiters: Periods, commas, semicolons, etc.

vim.api.nvim_set_hl(0, '@punctuation.special', { fg = jbp.clr_green_50 }) -- Special punctuation that doesn't fit into the previous categories.
vim.api.nvim_set_hl(0, 'StorageClass', { fg = jbp.clr_orange_50 })
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
vim.api.nvim_set_hl(0, 'Repeat', { fg = jbp.clr_purple_50 })
vim.api.nvim_set_hl(0, '@repeat', { link = 'Repeat' })

-- hlgr types int, long, char, etcp.
vim.api.nvim_set_hl(0, 'Type', { fg = jbp.clr_azure })
vim.api.nvim_set_hl(0, 'Typedef', { fg = 'red' })
vim.api.nvim_set_hl(0, '@type.builtin', { link = 'Type' }) -- Built-in types: `i32` in Rust.
vim.api.nvim_set_hl(0, '@type.builtin.c', { fg = jbp.clr_purple_50 }) -- Built-in types: `i32` in Rust.
vim.api.nvim_set_hl(0, '@type.definition', { fg = jbp.clr_blue_40 }) -- Type definitions, e.g. `typedef` in C.
vim.api.nvim_set_hl(0, '@type.qualifier', { fg = jbp.clr_blue_40 }) -- Qualifiers on types, e.g. `const` or `volatile` in C or `mut` in Rust.
vim.api.nvim_set_hl(0, '@type', { link = '@lsp.type.class' })
-- vim.api.nvim_set_hl(0, '@type', { link = 'Constant' }) -- Type (and class) definitions and annotations.

-- vim.api.nvim_set_hl(0, '@symbol', { fg = 'red', bg = 'blue' }) -- Identifiers referring to symbols or atoms.
-- vim.api.nvim_set_hl(0, '@none', { undercurl = true })
vim.api.nvim_set_hl(0, 'Identifier', { fg = jbp.clr_200 }) -- generic any variable name
vim.api.nvim_set_hl(0, '@variable', { link = 'Identifier' }) -- Variable names that don't fit into other categories, like `vim` in vim.api.

vim.api.nvim_set_hl(0, '@variable.builtin', { link = '@constant.builtin' }) -- Variable names defined by the language: `this` or `self` in Javascript and Python.
vim.api.nvim_set_hl(0, '@variable.builtin.python', { fg = jbp.clr_goaway_green }) -- Variable names defined by the language: `this` or `self` in Javascript and Python.

vim.api.nvim_set_hl(0, '@attribute', { fg = jbp.clr_red_50 }) -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.

-- hlgr booleans
vim.api.nvim_set_hl(0, 'Boolean', { fg = jbp.clr_orange_70 })
vim.api.nvim_set_hl(0, '@boolean', { link = 'Boolean' }) -- Boolean literals: `True` and `False` in Python.

-- hlgr strings
vim.api.nvim_set_hl(0, 'String', { fg = jbp.clr_goaway_green })
vim.api.nvim_set_hl(0, '@string', { link = 'String' }) -- String literals.
-- vim.api.nvim_set_hl(0, '@string.svelte', { link = 'Comment' }) -- String literals.
vim.api.nvim_set_hl(0, '@string.regex', { fg = jbp.clr_orange_70 }) -- Regular expression literals.
vim.api.nvim_set_hl(0, '@string.escape', { fg = jbp.clr_orange_70 }) -- Escape characters within a string: `\n`, `\t`, etc.
vim.api.nvim_set_hl(0, '@string.special', { link = 'Special' }) -- Strings with special meaning that don't fit into the previous categories.

-- hlgr numbers
vim.api.nvim_set_hl(0, 'Number', { fg = jbp.clr_orange_70 })
vim.api.nvim_set_hl(0, '@number', { link = 'Number' }) -- Numeric literals that don't fit into other categories.

-- hlgr constants
vim.api.nvim_set_hl(0, 'Constant', { fg = jbp.clr_red_40 }) -- NOTE: to self, this changes the name in -> TODO(santigo-zero):
vim.api.nvim_set_hl(0, '@constant', { fg = jbp.clr_red_50 }) -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python and emmylua annotations in lua
vim.api.nvim_set_hl(0, '@constant.builtin', { fg = jbp.clr_red_40 }) -- built-in constant values: `nil` in Lua, undefined and null in Javascript.
vim.api.nvim_set_hl(0, '@constant.macro', { fg = jbp.clr_red_40 }) -- Constants defined by macros: `NULL` in C.
vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { link = 'Constant' }) -- Numeric literals that don't fit into other categories.

-- hlgr if statements if else switch
vim.api.nvim_set_hl(0, 'Conditional', { fg = jbp.clr_purple_50 }) -- if, then, else, endif, switch, etc.
vim.api.nvim_set_hl(0, '@conditional', { link = 'Conditional' }) -- Keywords related to conditionals: `if`, `when`, `cond`, etc.

vim.api.nvim_set_hl(0, 'Error', { fg = jbp.clr_red_40 }) -- Any erroneous construct
vim.api.nvim_set_hl(0, 'ErrorMsg', { link = 'Error' }) -- Error messages in the cmdline
vim.api.nvim_set_hl(0, '@error', { link = 'ErrorMsg' }) -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = jbp.clr_yellow }) -- Warning messages.

-- hlgr todo
vim.api.nvim_set_hl(0, 'Todo', { fg = jbp.clr_purple_50, bold = true })
vim.api.nvim_set_hl(0, '@todo', { link = 'Todo' }) -- TODO(santigo-zero): Test.
vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' }) -- TODO(santigo-zero): Test.
vim.api.nvim_set_hl(0, '@text.todo.comment', { link = 'Todo' }) -- TODO(santigo-zero): Test.

vim.api.nvim_set_hl(0, '@text', { fg = jbp.clr_150 })
vim.api.nvim_set_hl(0, '@text.note', { fg = jbp.clr_blue_40 }) -- NOTE: INUPPERCASE: -- The italic = true affects @todo for some reason
vim.api.nvim_set_hl(0, '@text.warning', { link = 'Todo' }) -- Text representation of a warning note. This affecs @todo hl group for some reason
vim.api.nvim_set_hl(0, '@text.danger', { link = 'WarningMsg' }) -- FIXME Text representation of a danger note.
vim.api.nvim_set_hl(0, '@text.strong', { bold = true, fg = jbp.clr_yellow }) -- FIXME Text representation of a danger note.
vim.api.nvim_set_hl(0, '@text.emphasis', { italic = true, fg = jbp.clr_goaway_green }) -- FIXME Text representation of a danger note.
vim.api.nvim_set_hl(0, '@text.strike', { strikethrough = true, fg = jbp.clr_blue_40 }) -- FIXME Text representation of a danger note.

-- vim.api.nvim_set_hl(0, 'TSDebug', {}) -- TODO(santigo-zero): Fix this, where it's being used I don't know. Debugging statements.
vim.api.nvim_set_hl(0, '@define', { fg = jbp.clr_blue_40 }) -- Preprocessor #define statements.
vim.api.nvim_set_hl(0, '@tag', { fg = jbp.clr_purple_50 }) -- Tags like HTML tag names.
vim.api.nvim_set_hl(0, '@tag.attribute', { fg = jbp.clr_azure }) -- HTML attributes
vim.api.nvim_set_hl(0, '@tag.delimiter', { fg = jbp.clr_azure }) -- Tag delimiters like `<` `>` `/`.
-- vim.api.nvim_set_hl(0, 'TSStrong', {}) -- Text to be represented in bold.
-- vim.api.nvim_set_hl(0, 'TSEmphasis', {}) -- Text to be represented with emphasis.
-- vim.api.nvim_set_hl(0, 'TSUnderline', {}) -- Text to be represented with an underline.
-- vim.api.nvim_set_hl(0, 'TSStrike', { link = 'Title' }) -- Strikethrough text.
vim.api.nvim_set_hl(0, 'Title', { fg = jbp.clr_orange_50 }) -- Titles for output from ":set all", ":autocmd", also plugins use it for some windows.
vim.api.nvim_set_hl(0, '@text.title', { link = 'Title' }) -- Text that is part of a title.
-- vim.api.nvim_set_hl(0, 'TSLiteral', {}) -- Literal or verbatim text.
-- vim.api.nvim_set_hl(0, 'TSURI', {}) -- URIs like hyperlinks or email addresses.
-- vim.api.nvim_set_hl(0, 'TSMath', {}) -- Math environments like LaTeX's `$ ... $`.
vim.api.nvim_set_hl(0, '@text.reference', { fg = jbp.clr_red_40 }) -- Help pages: Footnotes, text references, citations, etc.
-- vim.api.nvim_set_hl(0, 'TSEnvironment', {}) -- Text environments of markup languages.
-- vim.api.nvim_set_hl(0, 'TSEnvironmentName', {}) -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.

-- hlgr zsh
vim.api.nvim_set_hl(0, 'zshSubst', { fg = jbp.clr_red_40 })
vim.api.nvim_set_hl(0, 'zshDeref', { fg = jbp.clr_red_40 })
vim.api.nvim_set_hl(0, 'zshString', { link = 'String' })
vim.api.nvim_set_hl(0, 'zshShortDeref', { link = 'Constant' })
vim.api.nvim_set_hl(0, 'zshPreProc', { link = 'Comment' })
vim.api.nvim_set_hl(0, 'zshTypes', { link = 'zshKeyword' })

-- hlgr errors hlgr try hlgr throw
vim.api.nvim_set_hl(0, 'Exception', { bg = jbp.clr_bg_purple_50, fg = jbp.clr_purple_50 }) -- try, catch, throw
vim.api.nvim_set_hl(0, '@exception', { link = 'Exception' }) -- Exception related keywords: `try`, `except`, `finally` in Python.

-- hlgr functions
vim.api.nvim_set_hl(0, 'Function', { fg = jbp.clr_purple_40 }) -- Function name (also: methods for classes)
vim.api.nvim_set_hl(0, '@function', { link = 'Function' }) -- Function definitions.
vim.api.nvim_set_hl(0, '@function.macro', { fg = jbp.clr_purple_50 }) -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
vim.api.nvim_set_hl(0, '@function.call', { fg = jbp.clr_blue_40 }) -- Function calls.
vim.api.nvim_set_hl(0, '@function.builtin', { fg = jbp.clr_purple_40 }) -- Built-in functions: `print` in Lua.

vim.api.nvim_set_hl(0, 'Include', { fg = jbp.clr_blue_40 }) -- import { ... } from '...' or from ... import ... or #include in C
vim.api.nvim_set_hl(0, '@include', { link = 'Include' }) -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.

-- hlgr keywords
vim.api.nvim_set_hl(0, 'Keyword', { fg = jbp.clr_purple_50 }) -- Any other keyword
vim.api.nvim_set_hl(0, '@keyword', { link = 'Keyword' }) -- Keywords that don't fit into other categories.
-- vim.api.nvim_set_hl(0, '@keyword.svelte', { fg = jbp.red2 }) -- Keywords that don't fit into other categories.
vim.api.nvim_set_hl(0, '@keyword.function', { fg = jbp.clr_purple_50, italic = true }) -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
vim.api.nvim_set_hl(0, '@keyword.operator', { fg = jbp.clr_purple_50 }) -- Unary and binary operators that are English words: `and`, `or` in Python and Lua; `sizeof` in C.
vim.api.nvim_set_hl(0, '@keyword.return', { fg = jbp.clr_purple_40 }) -- Keywords like `return` and `yield`.

vim.api.nvim_set_hl(0, 'Label', { fg = jbp.clr_goaway_green }) -- case, default, etc.
vim.api.nvim_set_hl(0, '@label', { link = 'Label' }) -- GOTO labels: `label:` in C, and `::label::` in Lua, and *thing* in help pages or the name of codeblocks in lua.

vim.api.nvim_set_hl(0, 'Method', { fg = jbp.clr_blue_40 })
vim.api.nvim_set_hl(0, '@method', { link = 'Method' }) -- Method definitions.
vim.api.nvim_set_hl(0, '@method.call', { link = 'Method' }) -- Method calls.

vim.api.nvim_set_hl(0, 'Macro', { fg = jbp.clr_red_40 })

-- will override Special colors, so we just link to it since in most cases
-- constructors calls and definitions start with a capital letter.
vim.api.nvim_set_hl(0, '@constructor', { fg = jbp.clr_yellow, bold = true }) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@constructor.lua', {}) -- Object and struct fields.
vim.api.nvim_set_hl(0, '@namespace', { fg = jbp.clr_goaway_green }) -- identifiers referring to modules and namespaces.

vim.api.nvim_set_hl(0, 'Character', { fg = jbp.clr_red_50 }) -- A character constant: 'c', '\n'
vim.api.nvim_set_hl(0, '@character', { link = 'Character' }) -- Character literals: `'a'` in C and .
vim.api.nvim_set_hl(0, '@character.special', { link = 'Special' }) -- Special characters.

vim.api.nvim_set_hl(0, 'Statement', { fg = jbp.clr_purple_50 }) -- the = and == and any statement.

vim.api.nvim_set_hl(0, 'Operator', { fg = jbp.clr_red_40 }) -- "sizeof", "+", "*"
vim.api.nvim_set_hl(0, '@operator', { link = 'Operator' }) -- = or ==, binary or unary operators: `+`, and also `->` and `*` in C.
-- vim.api.nvim_set_hl(0, '@operator.svelte', { fg = jbp.clr_green_70 })

-- comments
vim.api.nvim_set_hl(0, 'Comment', { fg = jbp.clr_75, italic = true })
vim.api.nvim_set_hl(0, '@comment', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@spell.comment', {})
vim.api.nvim_set_hl(0, '@lsp.type.comment', { link = 'Comment' })
vim.api.nvim_set_hl(0, '@lsp.type.comment.lua', {})

vim.api.nvim_set_hl(0, 'SpecialChar', { link = 'Constant' }) -- special character in a constant.
vim.api.nvim_set_hl(0, 'SpecialComment', { link = 'SpecialChar' }) -- special things inside a comment.

vim.api.nvim_set_hl(0, 'DiffAdd', { fg = jbp.clr_blue_40 })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = jbp.clr_goaway_green })
vim.api.nvim_set_hl(0, 'DiffDelete', { fg = jbp.clr_red_40 })
vim.api.nvim_set_hl(0, 'DiffText', { fg = jbp.clr_150 })

-- rest of semantic tokens
vim.api.nvim_set_hl(0, '@lsp.mod.deprecated', { strikethrough = true })

-- nvim-lspconfig and others
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = jbp.clr_red_40 })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = jbp.clr_blue_40 })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = jbp.clr_purple_50 })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { fg = jbp.clr_yellow })

vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { bg = jbp.clr_bg_red_50, fg = jbp.clr_red_40 })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { bg = jbp.clr_bg_blue, fg = jbp.clr_blue_40 })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { bg = jbp.clr_bg_purple_50, fg = jbp.clr_purple_50 })
vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { bg = jbp.clr_bg_yellow, fg = jbp.clr_yellow })

vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = jbp.clr_red_40 })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = jbp.clr_blue_40 })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = jbp.clr_purple_50 })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = jbp.clr_yellow })

vim.api.nvim_set_hl(0, 'LspReferenceRead', { bg = jbp.clr_200 }) -- When you call a function or use a method/class
vim.api.nvim_set_hl(0, 'LspReferenceText', { link = 'LspReferenceRead' })
vim.api.nvim_set_hl(0, 'LspReferenceWrite', { link = 'LspReferenceRead' })

-- css
vim.api.nvim_set_hl(0, '@punctuation.delimiter.css', { fg = jbp.clr_red_50 })
vim.api.nvim_set_hl(0, '@operator.css', { fg = jbp.clr_purple_40 })
vim.api.nvim_set_hl(0, '@field.css', { fg = jbp.clr_green_50 })
vim.api.nvim_set_hl(0, '@type.css', { fg = jbp.clr_purple_50 })
vim.api.nvim_set_hl(0, '@function.css', { fg = jbp.clr_green_50 })
vim.api.nvim_set_hl(0, '@type.definition.css', { fg = jbp.clr_orange_70 })

-- https://github.com/lewis6991/gitsigns.nvim
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = jbp.clr_purple_50 })
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = jbp.clr_blue_40 })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = jbp.clr_red_50 })

-- https://github.com/lukas-reineke/indent-blankline.nvim
vim.api.nvim_set_hl(0, 'IndentBlanklineChar', { fg = jbp.clr_30 })
