return {
  {
    "chrisgrieser/nvim-rip-substitute",
    keys = {
      {
        "<F2>",
        function()
          require("rip-substitute").sub()
        end,
        mode = { "n", "x" },
        desc = " rip substitute",
      },
    },
  },
}
