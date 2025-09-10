-- ~/.config/nvim/lua/plugins/blink-tex.lua
return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- 保留用户原来的 providers
    local providers = vim.deepcopy(opts.sources.providers)

    -- 针对 tex 文件：把 buffer / text provider 直接设为 nil
    opts.sources.providers = function()
      local bufnr = vim.api.nvim_get_current_buf()
      if vim.bo[bufnr].filetype == "tex" then
        providers.buffer = nil
        providers.text = nil
      end
      return providers
    end
  end,
}
