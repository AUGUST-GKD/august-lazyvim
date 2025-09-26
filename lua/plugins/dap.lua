return {
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      "mfussenegger/nvim-dap-python",
      keys = {
        {
          "<leader>dPt",
          function()
            require("dap-python").test_method()
          end,
          desc = "Debug Method",
          ft = "python",
        },
        {
          "<leader>dPc",
          function()
            require("dap-python").test_class()
          end,
          desc = "Debug Class",
          ft = "python",
        },
      },
      opts = {},
      config = function(_, opts)
        if vim.fn.has("win32") == 1 then
          require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/Scripts/pythonw.exe"))
        else
          require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/bin/python"))
        end
        -- require("dap-python").setup("debugpy-adapter") -- or uv, or path to python, see #usage
        -- table.insert(require("dap").configurations.python, {
        --   type = "python",
        --   request = "launch",
        --   name = "My custom launch configuration",
        --
        --   -- `program` is what you'd use in `python <program>` in a shell
        --   -- If you need to run the equivalent of `python -m <module>`, replace
        --   -- `program = '${file}` entry with `module = "modulename"
        --   program = "${file}",
        --   console = "integratedTerminal",
        --   cwd = "/august11",
        --
        --   -- Other options:
        --   -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
        -- })
      end,

      env = function()
        local cwd = vim.fn.getcwd()
        return {
          PYTHONPATH = cwd,
        }
      end,
    },

    ensure_installed = {
      "debugpy", -- Python
      "cpptools", -- C/C++
      "js-debug", -- JavaScript
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    keys = {
      {
        "<leader>du",
        function()
          require("dapui").toggle({})
        end,
        desc = "Dap UI",
      },
      {
        "<leader>de",
        function()
          require("dapui").eval()
        end,
        desc = "Eval",
        mode = { "n", "v" },
      },
    },
    opts = {},
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
    end,
  },
}
