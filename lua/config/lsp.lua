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

-- For DSA-only Java setup: minimal workspace directory per project
local workspace_dir = vim.fn.stdpath("data") .. "/java/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

lspconfig.jdtls.setup({
  cmd = { "jdtls", "-data", workspace_dir },
  root_dir = lspconfig.util.root_pattern(".git", "pom.xml", "build.gradle", ".classpath", ".project", ".settings", "."), -- fallback to current folder
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

-- Golang LSP setup
lspconfig.gopls.setup({
  on_attach = function(client, bufnr)
    -- Optional: Add keymaps or custom on_attach logic
  end,
  flags = { debounce_text_changes = 150 },
})
