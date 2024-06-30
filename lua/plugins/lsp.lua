return {
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     vim.list_extend(opts.ensure_installed, {
  --       "stylua",
  --       "lua-language-server",
  --       "powershell-editor-services",
  --       "prettier",
  --       "pyright",
  --     })
  --   end,
  -- },
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "lua-language-server",
        "powershell-editor-services",
        "prettier",
        "pyright",
      })
    end,
  },
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      powershell_es = {
        filetypes = { "ps1", "psm1", "psd1" },
        bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
        settings = {
          powershell = {
            enableProfileLoading = false,
            codeFormatting = {
              Preset = "OTBS",
              UseCorrectCasing = true,
              avoidSemicolonsAsLineTerminators = true,
              autoCorrectAliases = true,
              alignPropertyValuePairs = true,
            },
          },
        },
        init_options = {
          enableProfileLoading = false,
        },
      },
    },
  },
}
