vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

-- when in a visual block, can move whole block
-- up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- changes line join to make cursor stay at beginning
-- rather than go to end
vim.keymap.set("n", "J", "mzJ`z")
-- 1/2 page jumping, keep cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- same, but replace normal C-f and C-b
vim.keymap.set("n", "<C-f>", "<C-d>zz")
vim.keymap.set("n", "<C-b>", "<C-u>zz")
-- allows search terms to stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--[[
-- primagens good times on twitch
vim keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
--]]

-- greatest remap ever
-- if you had
-- foo
-- bar
-- and you highlighted and copied foo, then
-- highlilghted bar, and wanted to paste over
-- it, bar would replace the buffer with itself.
-- Instead, using <leader>p will move bar to the
-- 'void' register, and then copy foo over it,
-- thereby keeping foo in the register for future
-- copies.
vim.keymap.set("x", "<leader>p", "\"_dP")
-- delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- next greatest remap ever : asbjornHaland
-- copy to the +clipboard rather than the * clipboard
-- One clipboard is shared with the system, and the other
-- stays in vim. So, <leader>y to copy into system clipboard.
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- this will get primagen canceled?
-- something to do with intelliJ to do with
-- ctrl-c and escape being different with vertical
-- visual vs normal asaving?
vim.keymap.set("i", "<C-c>", "<Esc>")

-- "never press 'Q', it's the worst place in the universe"
-- I'm guessing it's the screen lock? thats <Ctrl-Q> and <Ctrl-S> though?
vim.keymap.set("n", "Q", "<nop>")
-- ctrl-f to switch projects and reopen into vim
-- NOTE: tmux <C-a>L = last session. My <C-a><C-a>
-- NO: Used for page down
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- format the buffer with the lsp
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format()
end)

-- quickfix navigation
vim.keymap.set("n", "C-k", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "C-j", "<cmd>cprev<CR>zz")

-- <space>s = start replacing the word that the cursor is on
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
-- <leader>x = makes current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
