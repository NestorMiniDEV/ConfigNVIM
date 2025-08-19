return {
  'rcarriga/nvim-notify',
  lazy = false,
  config = function ()
      require("notify").setup {
        stages = 'fade_in_slide_out',
        background_colour = '#000000',
        render = 'wrapped-compact',
        timeout = 500,
        fps = 30,
      }
      vim.notify = require('notify')
    end
}
