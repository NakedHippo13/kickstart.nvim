-- Tokyo Night Custom Port
-- Drop this file in: ~/.config/nvim/colors/tokyo-custom.lua
-- Then run: :colorscheme tokyo-custom

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.g.colors_name = "tokyo-custom"
vim.o.background = "dark"
vim.o.termguicolors = true

local hi = vim.api.nvim_set_hl

-- ─── Base palette ────────────────────────────────────────────────────────────
local c = {
  bg          = "#1a1b26",
  bg_dark     = "#15161f",
  bg_darker   = "#11121b",
  bg_popup    = "#1d1f2d",
  bg_float    = "#141520",
  bg_sel      = "#1f253f",
  bg_line     = "#202437",
  bg_fold     = "#202437",
  bg_inactive = "#21232e",
  bg_tab_inactive = "#222332",
  fg          = "#c0caf5",
  fg_dark     = "#484b5c",
  fg_gutter   = "#484b5c",
  border      = "#2e3347",
  comment     = "#545964",
  blue        = "#6199EF",
  blue2       = "#7aa2f7",
  cyan        = "#36C0C0",
  cyan2       = "#ACCFD7",
  green       = "#72C369",
  red         = "#EB6572",
  red2        = "#f77676",
  orange      = "#D19A66",
  yellow      = "#E5C07B",
  purple      = "#C678DD",
  magenta     = "#bb9af7",
  teal        = "#36C0C0",
  white       = "#ffffff",
  error       = "#f77676",
  warning     = "#d79a42",
  info        = "#7aa2f7",
  hint        = "#c0caf5",
  git_add     = "#5b8430",
  git_del     = "#d54242",
  git_mod     = "#7aa2f7",
  none        = "NONE",
}

-- ─── Editor UI ───────────────────────────────────────────────────────────────
hi(0, "Normal",          { fg = c.fg,       bg = c.bg })
hi(0, "NormalFloat",     { fg = c.fg,       bg = c.bg_float })
hi(0, "NormalNC",        { fg = c.fg,       bg = c.bg })
hi(0, "ColorColumn",     { bg = c.bg_line })
hi(0, "Cursor",          { fg = c.bg_dark,  bg = c.fg })
hi(0, "CursorLine",      { bg = c.bg_line })
hi(0, "CursorLineNr",    { fg = c.fg })
hi(0, "LineNr",          { fg = c.fg_dark })
hi(0, "SignColumn",      { bg = c.bg })
hi(0, "FoldColumn",      { fg = c.fg_gutter, bg = c.bg })
hi(0, "Folded",          { fg = c.comment,  bg = c.bg_fold })
hi(0, "VertSplit",       { fg = c.border })
hi(0, "WinSeparator",    { fg = c.border })
hi(0, "EndOfBuffer",     { fg = c.fg_dark })
hi(0, "NonText",         { fg = c.fg_dark })
hi(0, "Whitespace",      { fg = c.fg_dark })
hi(0, "SpecialKey",      { fg = c.fg_dark })
hi(0, "MatchParen",      { fg = c.none,     bg = "#0d1117", underline = true })
hi(0, "Visual",          { bg = c.bg_sel })
hi(0, "VisualNOS",       { bg = c.bg_sel })
hi(0, "Search",          { fg = c.fg,       bg = "#414868" })
hi(0, "IncSearch",       { fg = c.bg,       bg = c.yellow })
hi(0, "Substitute",      { fg = c.bg,       bg = c.red })
hi(0, "QuickFixLine",    { bg = c.bg_sel })
hi(0, "Directory",       { fg = c.blue })
hi(0, "Title",           { fg = c.blue,     bold = true })
hi(0, "Conceal",         { fg = c.comment })
hi(0, "WildMenu",        { fg = c.fg,       bg = c.bg_popup })
hi(0, "StatusLine",      { fg = c.fg,       bg = c.bg_popup })
hi(0, "StatusLineNC",    { fg = c.comment,  bg = c.bg_popup })
hi(0, "TabLine",         { fg = c.fg,       bg = c.bg_tab_inactive })
hi(0, "TabLineFill",     { bg = c.bg_tab_inactive })
hi(0, "TabLineSel",      { fg = c.white,    bg = c.bg })

-- ─── Popup / Float ───────────────────────────────────────────────────────────
hi(0, "Pmenu",           { fg = c.fg,       bg = c.bg_float })
hi(0, "PmenuSel",        { fg = c.fg,       bg = "#2e3347" })
hi(0, "PmenuSbar",       { bg = c.bg_float })
hi(0, "PmenuThumb",      { bg = c.border })
hi(0, "FloatBorder",     { fg = c.border,   bg = c.bg_float })

-- ─── Diagnostics ─────────────────────────────────────────────────────────────
hi(0, "DiagnosticError",          { fg = c.error })
hi(0, "DiagnosticWarn",           { fg = c.warning })
hi(0, "DiagnosticInfo",           { fg = c.info })
hi(0, "DiagnosticHint",           { fg = c.cyan2 })
hi(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi(0, "DiagnosticUnderlineWarn",  { undercurl = true, sp = c.warning })
hi(0, "DiagnosticUnderlineInfo",  { undercurl = true, sp = c.info })
hi(0, "DiagnosticUnderlineHint",  { undercurl = true, sp = c.cyan2 })

-- ─── Git signs ───────────────────────────────────────────────────────────────
hi(0, "DiffAdd",    { bg = "#1a2f1a" })
hi(0, "DiffChange", { bg = "#1a2040" })
hi(0, "DiffDelete", { bg = "#2f1a1a" })
hi(0, "DiffText",   { bg = "#263249" })
hi(0, "GitSignsAdd",    { fg = c.git_add })
hi(0, "GitSignsChange", { fg = c.git_mod })
hi(0, "GitSignsDelete", { fg = c.git_del })

-- ─── Syntax tokens ───────────────────────────────────────────────────────────
hi(0, "Comment",        { fg = c.comment, italic = true })
hi(0, "String",         { fg = c.yellow })
hi(0, "Character",      { fg = c.yellow })
hi(0, "Number",         { fg = c.purple })
hi(0, "Float",          { fg = c.purple })
hi(0, "Boolean",        { fg = c.cyan })
hi(0, "Constant",       { fg = c.cyan })
hi(0, "Identifier",     { fg = c.cyan2 })
hi(0, "Function",       { fg = c.green })
hi(0, "Keyword",        { fg = c.red })
hi(0, "Conditional",    { fg = c.red })
hi(0, "Repeat",         { fg = c.red })
hi(0, "Label",          { fg = c.red })
hi(0, "Operator",       { fg = c.red })
hi(0, "Exception",      { fg = c.red })
hi(0, "Statement",      { fg = c.red })
hi(0, "Include",        { fg = c.red })
hi(0, "Define",         { fg = c.red })
hi(0, "Macro",          { fg = c.red })
hi(0, "PreProc",        { fg = c.red })
hi(0, "PreCondit",      { fg = c.cyan })
hi(0, "StorageClass",   { fg = c.red })
hi(0, "Structure",      { fg = c.cyan })
hi(0, "Typedef",        { fg = c.cyan })
hi(0, "Type",           { fg = c.cyan })
hi(0, "Tag",            { fg = c.red })
hi(0, "Delimiter",      { fg = c.cyan2 })
hi(0, "SpecialChar",    { fg = c.purple })
hi(0, "Special",        { fg = c.cyan })
hi(0, "SpecialComment", { fg = c.comment })
hi(0, "Error",          { fg = c.error })
hi(0, "Todo",           { fg = c.bg,    bg = c.yellow, bold = true })
hi(0, "Underlined",     { underline = true })
hi(0, "Bold",           { bold = true })
hi(0, "Italic",         { italic = true })

-- ─── Treesitter ──────────────────────────────────────────────────────────────
-- (works for nvim-treesitter highlight groups)
hi(0, "@comment",               { link = "Comment" })
hi(0, "@string",                { link = "String" })
hi(0, "@string.escape",         { fg = c.purple })
hi(0, "@character",             { link = "Character" })
hi(0, "@number",                { link = "Number" })
hi(0, "@float",                 { link = "Float" })
hi(0, "@boolean",               { link = "Boolean" })
hi(0, "@constant",              { fg = c.cyan })
hi(0, "@constant.builtin",      { fg = c.cyan })
hi(0, "@constant.macro",        { fg = c.cyan })
hi(0, "@namespace",             { fg = c.blue })
hi(0, "@symbol",                { fg = c.cyan })
hi(0, "@keyword",               { link = "Keyword" })
hi(0, "@keyword.function",      { fg = c.red })
hi(0, "@keyword.operator",      { fg = c.red })
hi(0, "@keyword.return",        { fg = c.red })
hi(0, "@conditional",           { link = "Conditional" })
hi(0, "@repeat",                { link = "Repeat" })
hi(0, "@operator",              { fg = c.red })
hi(0, "@punctuation.bracket",   { fg = c.cyan2 })
hi(0, "@punctuation.delimiter", { fg = c.cyan2 })
hi(0, "@punctuation.special",   { fg = c.purple })
hi(0, "@function",              { fg = c.green })
hi(0, "@function.builtin",      { fg = c.green })
hi(0, "@function.macro",        { fg = c.green })
hi(0, "@function.call",         { fg = c.cyan2 })
hi(0, "@method",                { fg = c.green })
hi(0, "@method.call",           { fg = c.cyan2 })
hi(0, "@constructor",           { fg = c.cyan })
hi(0, "@parameter",             { fg = c.orange, italic = true })
hi(0, "@variable",              { fg = c.cyan2 })
hi(0, "@variable.builtin",      { fg = c.red })
hi(0, "@field",                 { fg = c.cyan2 })
hi(0, "@property",              { fg = c.cyan2 })
hi(0, "@type",                  { fg = c.cyan })
hi(0, "@type.builtin",          { fg = c.cyan })
hi(0, "@type.definition",       { fg = c.blue })
hi(0, "@class",                 { fg = c.blue })
hi(0, "@interface",             { fg = c.blue })
hi(0, "@label",                 { fg = c.red })
hi(0, "@tag",                   { fg = c.red })
hi(0, "@tag.attribute",         { fg = c.green })
hi(0, "@tag.delimiter",         { fg = c.cyan2 })
hi(0, "@text",                  { fg = c.fg })
hi(0, "@text.strong",           { bold = true })
hi(0, "@text.italic",           { italic = true })
hi(0, "@text.uri",              { fg = c.blue, underline = true })
hi(0, "@text.reference",        { fg = c.blue })
hi(0, "@text.title",            { fg = c.red, bold = true })
hi(0, "@text.quote",            { fg = c.green })
hi(0, "@text.raw",              { fg = c.cyan })
hi(0, "@text.todo",             { link = "Todo" })
hi(0, "@text.note",             { fg = c.info })
hi(0, "@text.warning",          { fg = c.warning })
hi(0, "@text.danger",           { fg = c.error })

-- ─── LSP ─────────────────────────────────────────────────────────────────────
hi(0, "LspReferenceText",  { bg = "#2a1f22" })
hi(0, "LspReferenceRead",  { bg = "#2a1f22" })
hi(0, "LspReferenceWrite", { bg = "#263249" })
hi(0, "LspCodeLens",       { fg = "#617a94" })
hi(0, "LspInlayHint",      { fg = "#969696", bg = "#1e2030" })

-- ─── Telescope (if installed) ────────────────────────────────────────────────
hi(0, "TelescopeBorder",         { fg = c.border,  bg = c.bg_float })
hi(0, "TelescopeNormal",         { fg = c.fg,      bg = c.bg_float })
hi(0, "TelescopePromptBorder",   { fg = c.border,  bg = c.bg_float })
hi(0, "TelescopeResultsBorder",  { fg = c.border,  bg = c.bg_float })
hi(0, "TelescopePreviewBorder",  { fg = c.border,  bg = c.bg_float })
hi(0, "TelescopeSelection",      { bg = "#181821" })
hi(0, "TelescopeSelectionCaret", { fg = c.magenta })
hi(0, "TelescopeMatching",       { fg = c.blue2 })

-- ─── nvim-cmp (if installed) ─────────────────────────────────────────────────
hi(0, "CmpItemAbbrMatch",        { fg = c.blue2, bold = true })
hi(0, "CmpItemAbbrMatchFuzzy",   { fg = c.blue2 })
hi(0, "CmpItemKindFunction",     { fg = c.green })
hi(0, "CmpItemKindMethod",       { fg = c.green })
hi(0, "CmpItemKindKeyword",      { fg = c.red })
hi(0, "CmpItemKindVariable",     { fg = c.cyan2 })
hi(0, "CmpItemKindClass",        { fg = c.blue })
hi(0, "CmpItemKindText",         { fg = c.fg })

-- ─── Which-key / Notify / indent-blankline ───────────────────────────────────
hi(0, "IndentBlanklineChar",        { fg = "#202437" })
hi(0, "IndentBlanklineContextChar", { fg = "#2e3347" })
hi(0, "IblIndent",                  { fg = "#202437" })
hi(0, "IblScope",                   { fg = "#2e3347" })
