return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<c-\>]],
      direction = "float",
      float_opts = {
        border = "curved",
        windblend = 10,
      },
      start_in_insert = true,
      close_on_exit = true,
    })

      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true})
    end,
}
