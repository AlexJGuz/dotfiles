require("config.keys.keymaps") -- Basic Keymaps
require("config.keys.cpp")
require("config.options")
require("config.lazy")
require("config")
require("snippets")

-- Terminal Setup
require("toggleterm").setup{
    size = 13,
}

-- Comments
require('Comment').setup{
    toggler = { line = '<leader>c ', block = '<leader>b ' },
    opleader = { line = '<leader>c ', block = '<leader>b ' },
    extra = { above = '<leader>cO', below = '<leader>co', eol = '<leader>cA' },
}

-- Colors
require'colorizer'.setup()

-- This module contains a number of default definitions
local rainbow_delimiters = require('rainbow-delimiters')
vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = { [''] = 'rainbow-delimiters', lua = 'rainbow-blocks', },
    priority = { [''] = 110, lua = 210, },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}

-- Git
require('gitsigns').setup()

-- For HTML files

vim.api.nvim_create_autocmd({
    "FileType",
},{
    pattern = {"html", "css"},
    callback = function(args)
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end
})
