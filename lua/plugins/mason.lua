return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua
        "stylua",
        -- "lua-language-server",

        -- Shell
        -- "shellcheck",
        "shfmt",

        -- Python
        "black",
        "pylint",
        "pyright",

        -- Rust
        "rust-analyzer",
        "rustfmt",

        -- Go
        "gopls",
        "gofumpt",
        "goimports",
        "golangci-lint",
        -- "golines",
        -- "gomodifytags",
        -- "gotests",
        "go-debug-adapter",

        -- Java
        "jdtls",

        -- C / C++
        "clangd",

        -- Web
        "css-lsp",
        "eslint-lsp",
        "html-lsp",
        "json-lsp",
        -- "prettier",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
        "vtsls",
      },
    },
  },
}
