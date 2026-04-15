return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "dragon",
      background = {
        dark = "dragon",
        light = "lotus",
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          DashboardHeader = { fg = theme.syn.special1 },
          DashboardCenter = { fg = theme.syn.func },
          DashboardFooter = { fg = theme.ui.nontext },
          DashboardShortCut = { fg = theme.syn.operator },
        }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
