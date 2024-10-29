return {
  {
    "mfussenegger/nvim-dap",
    --enabled = vim.fn.has "win32" == 0,
    dependencies = {
      {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = { "nvim-dap" },
        cmd = { "DapInstall", "DapUninstall" },
        opts = { handlers = {} },
      },
      {
        "rcarriga/nvim-dap-ui",
        opts = { floating = { border = "rounded" } },
        config = require "plugins.configs.nvim-dap-ui",
      },
    },
    event = "User AstroFile",
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function(_, opts)
      --local path = "C:\\Users\\igtorres\\AppData\\Local\\nvim-data\\mason\\packages\\debugpy\\venv\\Scripts\\python"
      -- local path = "C:\\Users\\igtorres\\AppData\\Local\\nvim-data\\.virtualenvs\\debugpy\\Scripts\\python"
      local path = "/home/igtorres/.local/share/nvim/mason/packages/debugpy/venv/bin/python3.10"
      require("dap-python").setup(path)
      table.insert(require('dap').configurations.python, {
        type = 'python',
        request = 'launch',
        name = 'My custom launch configuration',
        program = '${file}',
        justMyCode = "false",
      })
      table.insert(require('dap').configurations.python, {
        type = 'python',
        request = 'launch',
        name = 'Django',
        program = vim.fn.getcwd() .. '/manage.py',
        args = { 'runserver', '--noreload' },
      })
    end,
  }
}
