return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    opts.formatters_by_ft.python = { "black" }

    opts.format_on_save = function(bufnr)
      return vim.bo[bufnr].filetype == "python"
    end
    -- opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
    --   python = { "black" },
    -- })
    -- opts.format_on_save = false
  end,
}
