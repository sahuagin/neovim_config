vim.opt.runtimepath:append("~/.local/share/nvim/site/pack/packer/start/LanguageClient-neovim")

--[[
vim.api.nvim_list_runtime_paths()
-- print it out
:lua print(vim.inspect(vim.api.nvim_list_runtime_paths()))

How to do it by replacing vimscript with lua/vimscript
vim.api.nvim_command('set runtimepath^=~/.vim')
vim.api.nvim_command('let &packpath = &runtimepath')
vim.api.nvim_command('source ~/.vim/vimrc')
--]]
--
--
--[[
local languageclient =require("LanguageClient")
languageclient.setup({
    serverCommands = {
        {"rust", {'~/.cargo/bin/rustup', 'run', 'nightly', 'rust-analyzer'}},
        {"python", '~/.local/bin/jedi_language_server'},
    },
})
--]]
