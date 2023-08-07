local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.git_files, {})
vim.keymap.set('n', '<leader>st', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>su', builtin.grep_string, {})
vim.keymap.set('n', '<leader>sc', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>ta', builtin.resume, {})

vim.keymap.set("n", "<leader>td", function()
    require "telescope.builtin".lsp_definitions { jump_type = "never" }
end)

vim.keymap.set("n", "<leader>tr", function()
    require "telescope.builtin".lsp_references { jump_type = "never" }
end)

vim.keymap.set("n", "<leader>tp", function()
    require "telescope.builtin".builtin { jump_type = "never" }
end)

vim.keymap.set("n", "<leader>tb", function()
    require "telescope.builtin".buffers { jump_type = "never" }
end)
