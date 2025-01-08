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
        mode = "tabs",
      },
    },
  },
  --incline for filename

  {
    "b0o/incline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      -- Access TokyoNight colors through LazyVim utility
      local colors = require("tokyonight.colors").setup()

      require("incline").setup({
        hide = {
          cursorline = true,
          only_win = true,
        },
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.bg_highlight, guifg = colors.fg },
            InclineNormalNC = { guifg = colors.comment, guibg = colors.bg_statusline },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
}
