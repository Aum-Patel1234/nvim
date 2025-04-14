return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = {
      IMPORTANT = { icon = " ", color = "info" },
      FORMULA = { icon = " ", color = "hint" },
      TODO = { icon = " ", color = "info" },
      FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { "OPTIMIZE", "PERFORMANCE" } },
      HACK = { icon = " ", color = "warning" },
    },
  },
}
