local api = require "nvim-tree.api"

local function my_on_attach(bufnr)
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)

  -- l: solo expande carpetas, no abre archivos
  local function expand_only_dir()
    local node = api.tree.get_node_under_cursor()
    if node and node.type == "directory" then
      api.node.open.edit()
    end
  end

  vim.keymap.set("n", "l", expand_only_dir, opts("Expand Directory"))
  vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
end

local options = {
  on_attach = my_on_attach,

  hijack_directories = {
    enable = false,
  },

  view = {
    side = "right",
    width = 30,
  },
}

return options
