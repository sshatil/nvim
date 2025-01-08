return {
	"gbprod/yanky.nvim",
	config = function()
		require("yanky").setup({
			ring = {
				history_length = 50,
			},
			highlight = {
				on_put = true,
				on_yank = true,
				timer = 150,
			},
		})
		-- set keymaps
		local keymap = vim.keymap

		keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
		keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
		keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
		keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")

		keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
		keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")

		keymap.set("n", "]p", "<Plug>(YankyPutIndentAfterLinewise)")
		keymap.set("n", "[p", "<Plug>(YankyPutIndentBeforeLinewise)")
		keymap.set("n", "]P", "<Plug>(YankyPutIndentAfterLinewise)")
		keymap.set("n", "[P", "<Plug>(YankyPutIndentBeforeLinewise)")

		keymap.set("n", ">p", "<Plug>(YankyPutIndentAfterShiftRight)")
		keymap.set("n", "<p", "<Plug>(YankyPutIndentAfterShiftLeft)")
		keymap.set("n", ">P", "<Plug>(YankyPutIndentBeforeShiftRight)")
		keymap.set("n", "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)")

		keymap.set("n", "=p", "<Plug>(YankyPutAfterFilter)")
		keymap.set("n", "=P", "<Plug>(YankyPutBeforeFilter)")
	end,
}
