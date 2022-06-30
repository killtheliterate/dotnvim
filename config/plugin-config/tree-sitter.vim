lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = 'all', 

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  },
}
EOF
