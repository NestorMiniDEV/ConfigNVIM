return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- auto, latte, frappe, macchiato, mocha
      transparent_background = true, -- not necessary transparency.lua
      float = {
        transparent = true,
        solid = false,
      },
      term_colors = true,
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = {
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "bold" },
      },
      default_integrations = true,
      auto_integrations = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
      },
    })
    vim.cmd("colorscheme catppuccin")
  end
}
