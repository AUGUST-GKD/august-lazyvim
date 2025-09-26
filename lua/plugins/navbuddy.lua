return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
      opts = { lsp = { auto_attach = true } },
      keys = {
        {
          "<leader>cn",
          function()
            require("nvim-navbuddy").open()
          end,
          desc = "Navbuddy",
        },
      },
    },
  },
  -- your lsp config or other stuff
}
