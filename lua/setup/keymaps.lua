vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
-- vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
-- vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
-- vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Lazy
vim.keymap.set({ 'n', 't' }, '<leader>l', ':Lazy<Cr>', { silent = true, desc = 'Lazy' })

-- Float Terminal
vim.keymap.set({ 'n' }, '<leader>tt', ':FloatermToggle<Cr>', { silent = true, desc = '[T]oggle [T]erminal' })

-- Salir
vim.keymap.set('n', '<C-x>', ':qa<CR>', { noremap = true, silent = true, desc = 'E[x]it Neovim' })
vim.keymap.set('i', '<C-x>', '<Esc>:qa<CR>', { noremap = true, silent = true, desc = 'E[x]it Neovim' })

-- Buffers
vim.keymap.set('n', '<C-p>', ':bp<CR>', { noremap = true, silent = true, desc = '[P]revious Buffer' })
vim.keymap.set('n', '<C-n>', ':bn<CR>', { noremap = true, silent = true, desc = '[N]ext Buffer' })
vim.keymap.set('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true, desc = '[P]revious Buffer' })
vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = 'Close Buffer' })
vim.keymap.set('n', '<leader>C', ':%bd<CR>', { desc = 'Close All' })

-- Neotree
vim.keymap.set('n', '<C-e>', ':Neotree<CR>', { noremap = true, silent = true, desc = 'File [E]xplorer' })
vim.keymap.set('i', '<C-e>', '<Esc>:w<CR>:Neotree<CR>', { noremap = true, silent = true, desc = 'File [E]xplorer' })

-- Save File
vim.keymap.set({ 'n', 'i' }, '<C-s>', '<Cmd>lua SaveFile()<CR>', { desc = '[S]ave File' })

-- Line Numbers
vim.keymap.set('n', '<leader>saa', '<Cmd>lua NumbersShow()<CR>', { desc = 'Numbers Show' })
vim.keymap.set('n', '<leader>sad', '<Cmd>lua NumbersHide()<CR>', { desc = 'Numbers Hide' })

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
    vim.o.clipboard = 'unnamedplus'
end)
