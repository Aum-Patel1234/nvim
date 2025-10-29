return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}

    -- Add or merge formatter configurations
    opts.formatters_by_ft.python = { "black" }
    opts.formatters_by_ft.cpp = { "clang_format" }
    opts.formatters_by_ft.c = { "clang_format" }

    -- Enable format on save for Python and C/C++
    opts.format_on_save = function(bufnr)
      local ft = vim.bo[bufnr].filetype
      return ft == "python" or ft == "cpp" or ft == "c"
    end
  end,
}
