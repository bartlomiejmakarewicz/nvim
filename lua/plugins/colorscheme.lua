local mc = {
  fade_accent = "#DD5D1E",
  accent = "#BA9B47",
  black = "#000000",
  normal_nc = "#1D212B",
  bg = "#1F2430",
  highlight_bg = "#6E768A",
  flash_label = "#FF9E66",
  inlay_hint = "#3C7B8D",
}

return {
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    opts = {
      mirage = true,
      overrides = {
        NormalNC = { bg = mc.normal_nc },
        LineNr = { fg = mc.fade_accent },

        -- Raw search groups
        Search = { fg = mc.black, bg = mc.fade_accent },
        CurSearch = { fg = mc.black, bg = mc.fade_accent },
        IncSearch = { fg = mc.black, bg = mc.fade_accent, bold = true },

        -- Flash group overrides
        FlashLabel = { fg = mc.black, bg = mc.flash_label, bold = true },
        FlashMatch = { fg = mc.black, bg = mc.highlight_bg },
        FlashCurrent = { fg = mc.black, bg = mc.fade_accent, bold = true },

        LspInlayHint = { fg = mc.inlay_hint },
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
    config = true,
    -- opts = { tint = -80, saturation = 0.4 },
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
