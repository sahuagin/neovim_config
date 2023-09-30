return {
  -- "bluz71/vim-nightfly-guicolors",
  "bluz71/vim-moonfly-colors",
  priority = 1000, -- make sure to load this before all the other modules
  config = function()
    -- load the colorscheme here
    -- vim.cmd([[colorscheme nightfly]])
    vim.cmd([[colorscheme moonfly]])
    end,
}
