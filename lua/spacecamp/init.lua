-- gpt 4o, mistral, copilot, and ollama local gateway (trained on
-- my personal system .cache directory) was utilized to create
-- the initial draft of this port
local colors = {
  bg = "#1c1c1c",
  fg = "#b2b2b2",
  black = "#3a3a3a",
  red = "#af5f5f",
  green = "#87875f",
  yellow = "#e4c9af",
  blue = "#5f8787",
  magenta = "#7e7e7e",
  cyan = "#5f87af",
  white = "#d0d0d0",
  orange = "#ff8700",
  pink = "#d75f87",
  light_bg = "#262626",
  light_fg = "#d0d0d0",
  comment = "#6c6c6c",
  none = "NONE"
}

local apply_colorscheme = function()
  local hl = vim.api.nvim_set_hl
  local set_colors = {
    -- General UI
    Normal = { fg = colors.fg, bg = colors.bg },
    Comment = { fg = colors.comment, italic = true },
    CursorLine = { bg = colors.light_bg },
    CursorLineNr = { fg = colors.yellow, bold = true },
    LineNr = { fg = colors.comment },
    VertSplit = { fg = colors.comment },
    SignColumn = { bg = colors.bg },
    StatusLine = { fg = colors.fg, bg = colors.light_bg },
    StatusLineNC = { fg = colors.comment, bg = colors.bg },
    Visual = { bg = colors.comment },
    Pmenu = { fg = colors.fg, bg = colors.black },
    PmenuSel = { fg = colors.black, bg = colors.yellow },
    PmenuSbar = { bg = colors.black },
    PmenuThumb = { bg = colors.light_fg },

    -- Syntax highlighting
    Identifier = { fg = colors.blue },
    Function = { fg = colors.green },
    Statement = { fg = colors.yellow },
    Conditional = { fg = colors.red },
    Repeat = { fg = colors.red },
    Label = { fg = colors.yellow },
    Operator = { fg = colors.orange },
    Keyword = { fg = colors.magenta },
    PreProc = { fg = colors.yellow },
    Type = { fg = colors.cyan },
    Constant = { fg = colors.orange },
    String = { fg = colors.green },
    Character = { fg = colors.green },
    Number = { fg = colors.orange },
    Boolean = { fg = colors.orange },
    Float = { fg = colors.orange },
    Special = { fg = colors.yellow },
    SpecialChar = { fg = colors.orange },
    SpecialComment = { fg = colors.comment },
    Todo = { fg = colors.fg, bg = colors.yellow, bold = true },
    Error = { fg = colors.red, bg = colors.none, bold = true },
    WarningMsg = { fg = colors.orange, bg = colors.none, bold = true },
    DiffAdd = { fg = colors.green, bg = colors.none },
    DiffChange = { fg = colors.yellow, bg = colors.none },
    DiffDelete = { fg = colors.red, bg = colors.none },
    DiffText = { fg = colors.blue, bg = colors.none },

    -- LSP
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.blue },
    DiagnosticHint = { fg = colors.cyan },
    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.cyan },

    -- Treesitter
    TSAnnotation = { fg = colors.yellow },
    TSAttribute = { fg = colors.cyan },
    TSBoolean = { fg = colors.orange },
    TSCharacter = { fg = colors.green },
    TSComment = { fg = colors.comment, italic = true },
    TSConditional = { fg = colors.red },
    TSConstant = { fg = colors.orange },
    TSConstBuiltin = { fg = colors.orange },
    TSConstMacro = { fg = colors.orange },
    TSConstructor = { fg = colors.yellow },
    TSError = { fg = colors.red },
    TSException = { fg = colors.red },
    TSField = { fg = colors.blue },
    TSFloat = { fg = colors.orange },
    TSFunction = { fg = colors.green },
    TSFuncBuiltin = { fg = colors.green },
    TSFuncMacro = { fg = colors.green },
    TSInclude = { fg = colors.magenta },
    TSKeyword = { fg = colors.magenta },
    TSKeywordFunction = { fg = colors.magenta },
    TSKeywordOperator = { fg = colors.magenta },
    TSLabel = { fg = colors.yellow },
    TSMethod = { fg = colors.green },
    TSNamespace = { fg = colors.blue },
    TSNone = { fg = colors.fg },
    TSNumber = { fg = colors.orange },
    TSOperator = { fg = colors.orange },
    TSParameter = { fg = colors.blue },
    TSParameterReference = { fg = colors.blue },
    TSProperty = { fg = colors.blue },
    TSPunctDelimiter = { fg = colors.fg },
    TSPunctBracket = { fg = colors.fg },
    TSPunctSpecial = { fg = colors.fg },
    TSRepeat = { fg = colors.red },
    TSString = { fg = colors.green },
    TSStringRegex = { fg = colors.green },
    TSStringEscape = { fg = colors.orange },
    TSSymbol = { fg = colors.cyan },
    TSTag = { fg = colors.yellow },
    TSTagAttribute = { fg = colors.cyan },
    TSTagDelimiter = { fg = colors.comment },
    TSText = { fg = colors.fg },
    TSTitle = { fg = colors.yellow, bold = true },
    TSType = { fg = colors.cyan },
    TSTypeBuiltin = { fg = colors.cyan },
    TSVariable = { fg = colors.blue },
    TSVariableBuiltin = { fg = colors.blue },

    -- Git signs
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.yellow },
    GitSignsDelete = { fg = colors.red },
  }

  for group, color in pairs(set_colors) do
    hl(0, group, color)
  end
end

vim.o.background = "dark"
vim.o.termguicolors = true

apply_colorscheme()

lvim.colorscheme = apply_colorscheme
