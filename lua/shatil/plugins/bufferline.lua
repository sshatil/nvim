return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup {
      options = {
        diagnostics = "nvim_lsp", -- Show diagnostics (if LSP is set up)
        separator_style = "slant", -- Customize separators
        show_buffer_close_icons = true,
        show_close_icon = false,
        always_show_bufferline = true,
        mode = "tabs", --mode for tabs
      },
    }

    -- Keymaps for buffer navigation
    vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
    -- Keymap to close the current buffer
    vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true, silent = true })
  end,
}
