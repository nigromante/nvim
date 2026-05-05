-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- functions
function SaveFile()
  vim.lsp.buf.format()
  vim.cmd.w()
end

function NumbersShow()
  vim.opt.number = true
  vim.opt.relativenumber = true
end

function NumbersHide()
  vim.opt.number = false
  vim.opt.relativenumber = false
end
