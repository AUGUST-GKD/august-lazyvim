-- plugins/tokyonight.lua
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "moon",
      styles = { functions = {} },
      on_colors = function(colors)
        colors.error = "#ff0000"
        colors.bg_visual = "#6272af"
      end,
      on_highlights = function(hl)
        hl.DiagnosticUnnecessary = {
          fg = "#8b92b5", -- 或直接去掉特殊颜色
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      -- colorscheme = "catppuccin",
      colorscheme = "tokyonight",
    },
  },
}
-- return {
--   -- add gruvbox
--   { "ellisonleao/gruvbox.nvim" },
--
--   -- "catppuccin/nvim",
--   {
--     "catppuccin/nvim",
--     lazy = true,
--     name = "catppuccin",
--     opts = {
--       integrations = {
--         aerial = true,
--         alpha = true,
--         cmp = true,
--         dashboard = true,
--         flash = true,
--         fzf = true,
--         grug_far = true,
--         gitsigns = true,
--         headlines = true,
--         illuminate = true,
--         indent_blankline = { enabled = true },
--         leap = true,
--         lsp_trouble = true,
--         mason = true,
--         markdown = true,
--         mini = true,
--         native_lsp = {
--           enabled = true,
--           underlines = {
--             errors = { "undercurl" },
--             hints = { "undercurl" },
--             warnings = { "undercurl" },
--             information = { "undercurl" },
--           },
--         },
--         navic = { enabled = true, custom_bg = "lualine" },
--         neotest = true,
--         neotree = true,
--         noice = true,
--         notify = true,
--         semantic_tokens = true,
--         snacks = true,
--         telescope = true,
--         treesitter = true,
--         treesitter_context = true,
--         which_key = true,
--       },
--     },
--     specs = {
--       {
--         "akinsho/bufferline.nvim",
--         optional = true,
--         opts = function(_, opts)
--           if (vim.g.colors_name or ""):find("catppuccin") then
--             opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
--           end
--         end,
--       },
--     },
--   },
--
--   {
--     "akinsho/bufferline.nvim",
--     optional = true,
--     opts = function(_, opts)
--       if (vim.g.colors_name or ""):find("catppuccin") then
--         opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
--       end
--     end,
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       -- colorscheme = "gruvbox",
--       -- colorscheme = "catppuccin",
--       -- colorscheme = "tokyonight",
--       style = "moon",
--       on_colors = function(colors) end,
--     },
--   },
-- }
