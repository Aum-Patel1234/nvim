return {
  "hrsh7th/nvim-cmp",
  enabled = true,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip"
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Accept suggestion with Tab
        ["<CR>"] = cmp.mapping.confirm({ select = true }),  -- Accept with Enter
        ["<C-Space>"] = cmp.mapping.complete(),            -- Manually trigger completion
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),       -- Move up in suggestions
        ["<C-n>"] = cmp.mapping.select_next_item(),         -- Move down in suggestions
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
}
