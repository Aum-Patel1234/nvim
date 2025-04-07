return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.python = { "black" }

    opts.format_on_save = function(bufnr)
      return vim.bo[bufnr].filetype == "python"
    end
  end,
}
