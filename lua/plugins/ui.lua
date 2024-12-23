return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- opts.presets.lsp_doc_border = true,
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  -- Display inline hinst
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  --bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
      { "<leader>ba", "<Cmd>BufferLinePick<CR>", desc = "Pick buffer" },
    },
    opts = {
      options = {
        -- Customize tab names with close icons
        custom_areas = {
          right = function()
            return {
              { text = "x", highlight = "BufferClose" }, -- Custom close icon (change  to your preferred icon)
            }
          end,
        },
      },
    },
  },
}
