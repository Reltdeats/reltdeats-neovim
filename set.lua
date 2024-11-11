-- vim.o: behaves like :set
-- vim.go: behaves like :setglobal
-- vim.bo: for buffer-scoped options
-- vim.wo: for window-scoped options (can be double indexed)

-- Set line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.api.nvim_create_autocmd({'WinLeave', 'InsertEnter'}, {
  callback = function() vim.wo.relativenumber = false end
})

vim.api.nvim_create_autocmd({'WinEnter','InsertLeave'}, {
  callback = function() vim.wo.relativenumber = true end
})

-- Set fold method to treesitter and custom fold text
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.wo.foldlevel = 20

function _G.custom_fold_text()
  local line = vim.fn.getline(vim.v.foldstart)
  local line_count = vim.v.foldend - vim.v.foldstart + 1
  return string.format("+%s ··· %d lines ", line, line_count)
end

-- Set custom fold text function
vim.opt.foldtext = 'v:lua.custom_fold_text()'

vim.opt.scrolloff = 10
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.hlsearch = false

vim.api.nvim_exec ('language en_US.UTF-8', true)