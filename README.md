first stab at porting spacecamp vim colorsheme to lua for
use with neovim or lunarvim based distros.

original: https://github.com/jaredgorski/SpaceCamp

#### more about this port

To create a full 1:1 translation of the spacecamp.vim color scheme to a Lua-based Neovim configuration, I started off using llm-gateway for a first draft of translation,
and then included all relevant highlight groups and elements as defined in the original spacecamp.vim file.

#### usage

1. clone spacecamp.vim however you wish to `~/.vim/colors/spacecamp.vim`

2. whether you're using lunarvim or not add:

```lua
-- ~/.config/lvim/config.lua
lvim.plugins = {
    ...
    { "fgtrzah/spacecamp" },
    ...
}

lvim.colorscheme = "spacecamp"
vim.cmd("colorscheme spacecamp")

-- ... the rest
```
