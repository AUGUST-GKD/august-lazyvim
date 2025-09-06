return {
  {
    "IntoTheNull/claude.nvim",
    config = function()
      require("claude").setup({
        -- Your configuration here (see Configuration section)
      })
    end,
    -- Add keymaps in the keys table (LazyVim style)
    keys = {
      -- Chat interface
      { "<leader>ac", "<cmd>Claude<cr>", desc = "Open Claude Chat" },
      -- Coding interface
      { "<leader>ar", ":<C-u>ClaudeCoding<CR>", mode = "v", desc = "Refactor with Claude" },
    },
  },
}
