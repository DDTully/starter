return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>/",
        -- function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        function() require("telescope.builtin").current_buffer_fuzzy_find({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Current Buffer Fuzzy Find",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "bottom" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
