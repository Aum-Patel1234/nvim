return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[
      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
                       
                       [ https://github.com/Aum-Patel1234 ]
    ]]

    -- Initialize opts.section and opts.section.header if nil
    if not opts.section then
      opts.section = {}
    end

    if not opts.section.header then
      opts.section.header = {}
    end
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })

    -- Initialize layout if it's nil
    if not opts.layout then
      opts.layout = {} -- Provide a default layout table
    end

    -- Ensure that layout is a table
    if type(opts.layout) ~= "table" then
      opts.layout = {} -- Fallback to an empty table if it's not already a table
    end

    -- Add your layout configuration here if necessary
    -- For example:
    -- opts.layout[1] = some_value

    return opts
  end,
}
