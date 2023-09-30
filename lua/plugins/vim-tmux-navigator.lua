return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left window", silent = true },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to down window", silent = true },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to up window", silent = true },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right window", silent = true },
    },
  },
}
