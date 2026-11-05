require "nvchad.autocmds"

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Abrir nvim-tree como sidebar al iniciar sobre un directorio",
  callback = function(data)
    local directory = vim.fn.isdirectory(data.file) == 1
    if not directory then
      return
    end
    
    vim.cmd.cd(data.file)
    vim.cmd.enew()
    vim.bo[data.buf].buflisted = false
    vim.bo[data.buf].bufhidden = "wipe"

    require("nvim-tree.api").tree.open()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  desc = "Desactivar autocomentado (o/O/Enter)",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})
