return {
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      {
        "<leader>fp",
        function()
          require("fzf-lua").files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      {
        ";f",
        function()
          require("fzf-lua").files({
            no_ignore = false,
            -- hidden = true,
          })
        end,
        desc = "Current working directory list files",
      },
      {
        ";s",
        function()
          require("fzf-lua").live_grep()
        end,
        desc = "Search for a string in current directory",
      },
      {
        "\\\\",
        function()
          require("fzf-lua").buffers()
        end,
        desc = "Lists open buffers",
      },
      {
        ";r",
        function()
          require("fzf-lua").lsp_document_symbols()
        end,
        desc = "Lists function names, variables, from LSP symbols",
      },
      {
        ";;",
        function()
          require("fzf-lua").resume()
        end,
        desc = "Resume the previous fzf-lua picker",
      },
      {
        ";d",
        function()
          require("fzf-lua").diagnostics_document()
        end,
        desc = "Lists diagnostics for the current buffer",
      },
      {
        "sf",
        function()
          local function fzf_buffer_dir()
            return vim.fn.expand("%:p:h")
          end

          require("fzf-lua").files({
            cwd = fzf_buffer_dir(),
            respect_gitignore = false,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout = "default",
          })
        end,
        desc = "Open File Browser with the path of the current buffer",
      },
      {
        ";z",
        function()
          require("fzf-lua").spell_suggest()
        end,
        desc = "Show spelling suggestions",
      },
    },
  },
  -- Disable flash.nvim
  { "folke/flash.nvim", enabled = false },
  -- {
  --   "folke/which-key.nvim",
  --   enabled = false,
  -- },
}
