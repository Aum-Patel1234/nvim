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
  settings = {
    gopls = {
      ui = { semanticTokens = true },
    },
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.semanticTokensProvider then
      local augroup = vim.api.nvim_create_augroup("SemanticTokens", { clear = true })

      local function refresh_semantic_tokens()
        local params = { textDocument = vim.lsp.util.make_text_document_params() }
        client.request("textDocument/semanticTokens/full", params, nil, bufnr)
      end

      vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "InsertLeave" }, {
        group = augroup,
        buffer = bufnr,
        callback = refresh_semantic_tokens,
      })

      refresh_semantic_tokens()
    end
  end,
})
