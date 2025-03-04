return {
  "williamboman/mason-lspconfig",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {},
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
      }
    })
  end,
}
