mouse = a

vim.o.background = dark

return {
  -- Color schemes
  { "ellisonleao/gruvbox.nvim" },
  -- Load this theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- Commenter
  {
    "numToStr/Comment.nvim",
    opts = {},
  },

  -- Neotree show hidden files
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "glimmer",
      })
    end,
  },
}
