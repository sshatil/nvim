return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
    },
  },
  -- Add Catppuccin plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensure it loads before other plugins
    opts = {
      flavour = "mocha",
    },
  },

  --add dracula
  {
    "Mofiqul/dracula.nvim",
    priority = 1000,
  },
}
