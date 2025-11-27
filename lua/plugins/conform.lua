return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    -- Add or merge formatter configurations
    opts.formatters_by_ft.python = { "black" }
    opts.formatters_by_ft.cpp = { "clang_format" }
    opts.formatters_by_ft.c = { "clang_format" }
    opts.formatters_by_ft.go = { "goimports" }

    opts.formatters_by_ft.javascript = { "prettier" }
    opts.formatters_by_ft.typescript = { "prettier" }
    opts.formatters_by_ft.javascriptreact = { "prettier" }
    opts.formatters_by_ft.typescriptreact = { "prettier" }
    opts.formatters_by_ft.json = { "prettier" }
    opts.formatters_by_ft.markdown = { "prettier" }

    -- Enable format on save for Python and C/C++
    opts.format_on_save = function(bufnr)
      local ft = vim.bo[bufnr].filetype
      return ft == "python" or ft == "cpp" or ft == "c" or ft == "go"
    end
  end,
}
