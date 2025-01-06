-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

--Mode change
keymap.set("i", "jj", "<Esc>", { desc = "Back to normal mode" })

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })

--File save
-- Save file and switch to normal mode in insert mode
keymap.set("i", "<C-s>", "<Esc>:w<CR>", { desc = "Save and exit insert mode" })

-- Save file in normal mode
keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- Save file in visual mode
keymap.set("v", "<C-s>", "<Esc>:w<CR>", { desc = "Save file" })

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Scroll down/up and center the cursor
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- New tab
--

-- Split window
keymap.set("n", "sv", ":split<Return>", opts)
keymap.set("n", "ss", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w><")
keymap.set("n", "<C-w><up>", "<C-w><")
keymap.set("n", "<C-w><down>", "<C-w><")
