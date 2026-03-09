return {
  -- Install the GitHub theme plugin
  {
    "projekt0n/github-nvim-theme",
    lazy = false,    -- make sure we load this during startup
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- You can add specific theme configuration here if needed
        options = {
          transparent = false, -- Set to true if you want a transparent background
        },
      })
    end,
  },

  -- Configure LazyVim to use the theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_dimmed",
    },
  },
}
