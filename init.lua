-- bootstrap lazy.nvim, LazyVim and your plugins
-- require("config.tokyonight")
if vim.g.vscode then
  -- VSCode extension
  require("config.lazy")
else
  -- ordinary Neovim
  require("config.lazy")
end
