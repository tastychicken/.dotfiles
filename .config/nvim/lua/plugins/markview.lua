return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  config = function()
    require("markview").setup({
      preview = {
        icon_provider = "internal", -- "mini" or "devicons"
      }
    })
  end,
}
