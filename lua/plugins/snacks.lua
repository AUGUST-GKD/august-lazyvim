return {
  {
    "folke/snacks.nvim",
    -- @type snacks.Config
    opts = {
      -- explorer = {
      --   -- your explorer configuration comes here
      --   -- or leave it empty to use the default settings
      --   -- refer to the configuration section below
      --  -- layout = { width = 0.1 },
      --   -- layout = { layout = { width = 0.1 } },
      -- },
      files = {
        -- ignored = true, -- 不按忽略规则隐藏（或在 ignored=true 时单独白名单）
        -- 如果有 exclude/ignore_patterns 等，把 ".vscode" 从中移除
      },

      picker = {

        hidden = true, -- 显示点文件
        ignored = true, -- 不按忽略规则隐藏（或在 ignored=true 时单独白名单）
        sources = {
          files = { hidden = true, ignored = true },
          buffers = { hidden = true, ignored = true },
          explorer = {
            layout = {
              layout = { min_width = 25, max_width = 50, width = 30 },
              -- your explorer picker configuration comes here
              -- or leave it empty to use the default settings
              ignored = true, -- 不按忽略规则隐藏（或在 ignored=true 时单独白名单）
            },
          },
        },
      },
    },
  },
}
