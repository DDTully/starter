return {
  {
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "stylua",
          "lua-language-server",
          "powershell-editor-services",
          "prettier",
          "pyright",
        },
      },
    },
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        powershell_es = {
          filetypes = { "ps1", "psm1", "psd1" },
          bundle_path = vim.fn.stdpath("data") .. "/mason/packages/powershell-editor-services",
          settings = { powershell = { codeFormatting = { Preset = "OTBS", UseCorrectCasing = "true" } } },
          init_options = {
            enableProfileLoading = false,
          },
        },
      },
    },
  },
}
