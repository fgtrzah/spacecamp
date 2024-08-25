local M = {}

function M.setup()
  -- Define basic colors
  local colors = {
    bg = "#1e1e1e",          -- Background
    fg = "#c5c8c6",          -- Foreground
    red = "#cc6666",         -- Red
    green = "#b5bd68",       -- Green
    yellow = "#f0c674",      -- Yellow
    blue = "#81a2be",        -- Blue
    magenta = "#b294bb",     -- Magenta
    cyan = "#8abeb7",        -- Cyan
    white = "#ffffff",       -- White
    black = "#000000",       -- Black
    gray = "#7c7c7c",        -- Gray
  }

  -- Editor
  vim.cmd("highlight Normal guifg=" .. colors.fg .. " guibg=" .. colors.bg)
  vim.cmd("highlight CursorLine guibg=" .. colors.black)
  vim.cmd("highlight CursorColumn guibg=" .. colors.black)
  vim.cmd("highlight LineNr guifg=" .. colors.gray)
  vim.cmd("highlight CursorLineNr guifg=" .. colors.yellow)
  vim.cmd("highlight VertSplit guifg=" .. colors.gray .. " guibg=" .. colors.bg)

  -- Syntax Highlighting
  vim.cmd("highlight Comment guifg=" .. colors.gray .. " gui=italic")
  vim.cmd("highlight Constant guifg=" .. colors.cyan)
  vim.cmd("highlight String guifg=" .. colors.green)
  vim.cmd("highlight Character guifg=" .. colors.green)
  vim.cmd("highlight Number guifg=" .. colors.yellow)
  vim.cmd("highlight Boolean guifg=" .. colors.yellow)
  vim.cmd("highlight Float guifg=" .. colors.yellow)
  vim.cmd("highlight Identifier guifg=" .. colors.blue)
  vim.cmd("highlight Function guifg=" .. colors.blue)
  vim.cmd("highlight Statement guifg=" .. colors.red)
  vim.cmd("highlight Conditional guifg=" .. colors.red)
  vim.cmd("highlight Repeat guifg=" .. colors.red)
  vim.cmd("highlight Label guifg=" .. colors.red)
  vim.cmd("highlight Operator guifg=" .. colors.fg)
  vim.cmd("highlight Keyword guifg=" .. colors.magenta)
  vim.cmd("highlight Exception guifg=" .. colors.red)
  vim.cmd("highlight PreProc guifg=" .. colors.magenta)
  vim.cmd("highlight Include guifg=" .. colors.magenta)
  vim.cmd("highlight Define guifg=" .. colors.magenta)
  vim.cmd("highlight Macro guifg=" .. colors.magenta)
  vim.cmd("highlight Type guifg=" .. colors.yellow)
  vim.cmd("highlight StorageClass guifg=" .. colors.yellow)
  vim.cmd("highlight Structure guifg=" .. colors.yellow)
  vim.cmd("highlight Typedef guifg=" .. colors.yellow)
  vim.cmd("highlight Special guifg=" .. colors.cyan)
  vim.cmd("highlight SpecialChar guifg=" .. colors.cyan)
  vim.cmd("highlight Tag guifg=" .. colors.blue)
  vim.cmd("highlight Delimiter guifg=" .. colors.white)
  vim.cmd("highlight SpecialComment guifg=" .. colors.gray)
  vim.cmd("highlight Debug guifg=" .. colors.red)

  -- UI Elements
  vim.cmd("highlight Pmenu guibg=" .. colors.black .. " guifg=" .. colors.white)
  vim.cmd("highlight PmenuSel guibg=" .. colors.blue .. " guifg=" .. colors.white)
  vim.cmd("highlight PmenuSbar guibg=" .. colors.gray)
  vim.cmd("highlight PmenuThumb guibg=" .. colors.white)
  vim.cmd("highlight TabLine guibg=" .. colors.black .. " guifg=" .. colors.gray)
  vim.cmd("highlight TabLineFill guibg=" .. colors.bg)
  vim.cmd("highlight TabLineSel guibg=" .. colors.blue .. " guifg=" .. colors.white)

  -- Diagnostics
  vim.cmd("highlight ErrorMsg guifg=" .. colors.red .. " guibg=" .. colors.bg .. " gui=bold")
  vim.cmd("highlight WarningMsg guifg=" .. colors.yellow .. " guibg=" .. colors.bg)
  vim.cmd("highlight InfoMsg guifg=" .. colors.blue .. " guibg=" .. colors.bg)
  vim.cmd("highlight HintMsg guifg=" .. colors.cyan .. " guibg=" .. colors.bg)
  vim.cmd("highlight Error guifg=" .. colors.red .. " gui=bold")
  vim.cmd("highlight Warning guifg=" .. colors.yellow)
  vim.cmd("highlight Info guifg=" .. colors.blue)
  vim.cmd("highlight Hint guifg=" .. colors.cyan)

  -- Git
  vim.cmd("highlight GitSignsAdd guifg=" .. colors.green)
  vim.cmd("highlight GitSignsChange guifg=" .. colors.yellow)
  vim.cmd("highlight GitSignsDelete guifg=" .. colors.red)

  -- Search
  vim.cmd("highlight Search guibg=" .. colors.yellow .. " guifg=" .. colors.bg)
  vim.cmd("highlight IncSearch guibg=" .. colors.magenta .. " guifg=" .. colors.bg)
  vim.cmd("highlight MatchParen guibg=" .. colors.gray .. " guifg=" .. colors.white)

  -- Status Line
  vim.cmd("highlight StatusLine guifg=" .. colors.white .. " guibg=" .. colors.gray)
  vim.cmd("highlight StatusLineNC guifg=" .. colors.gray .. " guibg=" .. colors.black)

  -- Visual Mode
  vim.cmd("highlight Visual guibg=" .. colors.blue .. " guifg=" .. colors.white)

  -- Diff
  vim.cmd("highlight DiffAdd guibg=" .. colors.green .. " guifg=" .. colors.black)
  vim.cmd("highlight DiffChange guibg=" .. colors.yellow .. " guifg=" .. colors.black)
  vim.cmd("highlight DiffDelete guibg=" .. colors.red .. " guifg=" .. colors.black)
  vim.cmd("highlight DiffText guibg=" .. colors.blue .. " guifg=" .. colors.black)
end

return M
