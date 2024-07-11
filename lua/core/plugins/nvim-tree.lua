vim.g.loaded_netrw = 1
vim.g.loaded_newrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
