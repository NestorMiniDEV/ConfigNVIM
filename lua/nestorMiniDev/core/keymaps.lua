vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit Insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear seach highlights" })

--  increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Splits
keymap.set("n", "<leader>u", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>i", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>-", { desc = "Make splits equal size" })
keymap.set("n", "<leader>q", "<cmd>close<CR>", { desc = "Split window vertically" })

-- Tabs
keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>ti", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tu", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open  current buffer in new tab" })
