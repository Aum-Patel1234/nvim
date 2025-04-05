local lspconfig = require("lspconfig")

lspconfig.prismals.setup({
  -- You can add additional settings here if needed.
  on_attach = function(client, bufnr)
    -- Optionally, add your custom on_attach function code here.
    -- For example, keybindings for LSP functions.
  end,
  flags = {
    debounce_text_changes = 150,
  },
})
