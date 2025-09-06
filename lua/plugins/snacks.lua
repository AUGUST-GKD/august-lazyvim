return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      -- explorer = {
      --   -- your explorer configuration comes here
      --   -- or leave it empty to use the default settings
      --   -- refer to the configuration section below
      --  -- layout = { width = 0.1 },
      --   -- layout = { layout = { width = 0.1 } },
      -- },
      picker = {
        sources = {
          explorer = {
            layout = { layout = { min_width = 25, max_width = 50, width = 30 } },
            -- your explorer picker configuration comes here
            -- or leave it empty to use the default settings
          },
        },
      },
    },
  },
}
