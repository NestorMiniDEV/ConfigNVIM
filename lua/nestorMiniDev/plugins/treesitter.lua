return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  lazy = false,
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- NUEVA API: require directo, sin .configs
    require("nvim-treesitter").setup({
      ensure_installed = {
        "json", "javascript", "typescript", "tsx",
        "yaml", "html", "css", "prisma",
        "markdown", "markdown_inline", "svelte",
        "graphql", "bash", "lua", "vim",
        "dockerfile", "gitignore", "query", "vimdoc", "c",
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- nvim-ts-autotag ahora tiene su propio setup
    require("nvim-ts-autotag").setup()
  end,
}
