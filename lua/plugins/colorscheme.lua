local mc = {
  -- fade_accent = "#947538",
  fade_accent = "#DD5D1E",
  accent = "#BA9B47",
  black = "#000000",
  normal_nc = "#1D212B",
  bg = "#1F2430",
  highlight_bg = "#6E768A",
  flash_label = "#FF9E66",
}

return {
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    -- enabled = false,
    lazy = false,
    priority = 999,
    opts = {
      mirage = true,
      overrides = {
        NormalNC = { bg = mc.normal_nc },
        LineNR = { fg = mc.fade_accent },

        -- Raw search groups
        Search = { fg = mc.black, bg = mc.fade_accent },
        CurSearch = { fg = mc.black, bg = mc.fade_accent },
        IncSearch = { fg = mc.black, bg = mc.fade_accent, bold = true },

        -- Flash group overrides
        FlashLabel = { fg = mc.black, bg = mc.flash_label, bold = true },
        FlashMatch = { fg = mc.black, bg = mc.highlight_bg },
        FlashCurrent = { fg = mc.black, bg = mc.fade_accent, bold = true },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },

  {
    "levouh/tint.nvim",
    name = "tint",
    -- enabled = false,
    lazy = false,
    config = true,
    priority = 998,
    -- opts = { tint = -80, saturation = 0.4 },
  },
  {
    "folke/flash.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
  {
    "catppuccin/nvim",
    enabled = false,
  },
}
