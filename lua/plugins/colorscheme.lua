return {
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme sonokai")
      vim.g.sonokai_style = "andromeda"
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_transparent_background = 1
    end,
  },
}
