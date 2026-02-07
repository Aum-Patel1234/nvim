return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "love" },
            },
            workspace = {
              library = {
                vim.fn.getenv("LOVE2D_LIB"),
              },
            },
          },
        },
      },
    },
  },
}
