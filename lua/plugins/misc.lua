return {
  { "DDTully/comment-box.nvim" },
  { "Mofiqul/vscode.nvim" },
  { "mbbill/undotree" },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
