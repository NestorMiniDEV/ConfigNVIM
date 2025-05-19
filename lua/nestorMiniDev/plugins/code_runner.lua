return {
  'CRAG666/code_runner.nvim',
  config = function()
    require("code_runner").setup({
      filetype = {
        python = "python3 -u",
        javascript = "node",
      },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = true })

  end,
}
