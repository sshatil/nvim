return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      -- Configure NeoTree options here
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      window = {
        width = 35,
      },
      default_component_configs = {
        indent = {
          padding = 1,
        },
      },
    })
    -- Custom key mappings to toggle the file tree
    local keymap = vim.keymap
    keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file tree" })
    keymap.set("n", "<leader>e", "<cmd>Neotree reveal<CR>", { desc = "Toggle file tree and reveal current file" })
  end,
}
