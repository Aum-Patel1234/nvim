return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd", "--compile-commands-dir=." },
          on_attach = function(client, bufnr)
            -- Disable LSP formatting (so only clang_format from conform.nvim runs)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
    },
  },
}
