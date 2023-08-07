vim.g.mapleader = " "

-- general
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

-- window manipulation and navigation
vim.keymap.set("n", "<leader>av", vim.cmd.vsp)
vim.keymap.set('n', '<leader>al', "<C-w>l<CR>")
vim.keymap.set('n', '<leader>ah', "<C-w>h<CR>")
vim.keymap.set('n', '<leader>aj', "<C-w>j<CR>")
vim.keymap.set('n', '<leader>ak', "<C-w>k<CR>")

-- mess with the clipboard
vim.keymap.set('v', '<leader>p', '"_dP')
vim.keymap.set('v', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>y', '"+y')

-- find and replace
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- quickfix lists
vim.keymap.set('n', '<leader>lc', vim.cmd.ccl)
