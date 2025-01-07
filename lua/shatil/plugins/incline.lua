local colors = {
  -- Define custom colors
  magenta500 = "#24283B",   -- Custom Magenta color
  base04 = "#DB4B4B",       -- Custom Base color (dark background)
  violet500 = "#414868",    -- Custom Violet color
  base03 = "#12131B",       -- Custom dark color for inactive buffer}
}
return {
  'b0o/incline.nvim',
  config = function()
    require('incline').setup({
      hide = {
        cursorline = true,
        only_win = true,
      },
      highlight = {
        groups = {
          InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
          InclineNormalNC = { guifg = colors.violet500, guibg = colors.base03 },
        },
      },
      --window = { margin = { vertical = 0, horizontal = 1 } },

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
  -- Optional: Lazy load Incline
  event = 'VeryLazy',
}
