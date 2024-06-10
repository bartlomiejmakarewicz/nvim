return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonnet_ls = {},
        helm_ls = {},
      },
      setup = {
        rust_analyzer = function()
          return true
        end,
      },
    },
  },
  {
    "towolf/vim-helm",
  },
}
