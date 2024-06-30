return {
  { "DDTully/comment-box.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "mbbill/undotree" },
  -- {
  --   "hedyhli/outline.nvim",
  --   config = function()
  --     vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })
  --     require("outline").setup({})
  --   end,
  -- },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
