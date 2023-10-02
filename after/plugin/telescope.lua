local builtin = require('telescope.builtin')
-- find a file
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- find a file in git
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- project search: regex project directory
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)

