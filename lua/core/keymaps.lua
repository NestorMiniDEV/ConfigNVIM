vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true


vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- clear search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- code runner
vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- move screens
vim.keymap.set('n', '<leader>h', '<C-w>h', {desc = 'move to left screen'})
vim.keymap.set('n', '<leader>l', '<C-w>l', {desc = 'move to right screen'})
vim.keymap.set('n', '<leader>k', '<C-w>k', {desc = 'move to top screen'})
vim.keymap.set('n', '<leader>j', '<C-w>j', {desc = 'move to bottom screen'})

-- create splits
vim.keymap.set('n', '<A-s>', '<C-w>s', {desc = 'create horizontal split'})
vim.keymap.set('n', '<A-v>', '<C-w>v', {desc = 'create vertical split'})
