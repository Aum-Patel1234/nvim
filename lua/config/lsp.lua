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

lspconfig.clangd.setup({
  cmd = { "clangd", "--compile-commands-dir=cpp" }, -- Adjust if needed
  on_attach = function(client, bufnr)
    -- Optional: set keymaps or LSP options for C/C++
  end,
  flags = {
    debounce_text_changes = 150,
  },
})
--
-- lspconfig.pylsp.setup({
--   settings = {
--     pylsp = {
--       plugins = {
--         rope_completion = { enabled = false },
--         rope_rename = { enabled = false },
--         rope_outline = { enabled = false },
--       },
--     },
--   },
-- })
