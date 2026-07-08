return {
  "kvrohit/substrata.nvim",
  priority = 1000,
  config = function()
    -- Variables globales de personalización
    vim.g.substrata_italic_comments = true
    vim.g.substrata_italic_keywords = false
    vim.g.substrata_italic_functions = false
    vim.g.substrata_italic_variables = false
    vim.g.substrata_transparent_background = true  -- igual que tenías en catppuccin

    vim.cmd("colorscheme substrata")
  end
}
