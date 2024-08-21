local keymap = vim.keymap

local opts = { noremap = true, silent = true }
vim.g.mapleader = ","

local gheight = vim.api.nvim_list_uis()[1].height
local gwidth = vim.api.nvim_list_uis()[1].width
local width = 50
local height = 15

vim.api.nvim_create_autocmd({
    "FileType",
},{
    pattern = "cpp",
    callback = function(args)
        keymap.set("n", "<leader>cp", ":RunCode")
        keymap.set("n", "<leader>et", function()
            local testfile = ""
            vim.ui.input({ 
                prompt = "Choose test file: ",
                completion = "file",
                default = "test",
                },
                function(input)
                    testfile = input
                end
            )
            vim.api.nvim_open_win(0,true,{
                relative = 'editor', 
                width = width, 
                height = height, 
                row = (gheight - height) * 0.5, 
                col = (gwidth - width) * 0.5, 
                border = "rounded",
                title = testfile,
                title_pos = "center",
                style = "minimal",
            })
            vim.cmd("e " .. testfile)
            vim.cmd("setlocal nobuflisted")
        end)
        keymap.set("n", "<leader>uu", ":e!<CR>",opts)
    end
})
