require('code_runner').setup({
    mode = "term",
    start_insert = true,
    filetype = {
        python = "python3 -u $fileName",
        cpp = function(...)
            local base = {
                "g++ $fileName -o",
                "/tmp/$fileNameWithoutExt &&",
            }

            local testfile = ""
            vim.ui.input({ 
                prompt = "Choose input file (blank to use stdin): ",
                completion = "file",
                },
                function(input)
                    testfile = input
                end
            )
            local exec = " time /tmp/$fileNameWithoutExt"
            local run = {
                exec,
                "&& rm /tmp/$fileNameWithoutExt",
            }
            if testfile == "" then
                require("code_runner.commands").run_from_fn(vim.list_extend(base, run))
            else
                exec = exec .. " < " .. testfile .. " > output"
                run[1] = exec
                require("code_runner.commands").run_from_fn(vim.list_extend(base, run))
                vim.api.nvim_open_win(0,true,{ split = "right" })
                vim.cmd("e output")
                vim.cmd([[ 
                    set autoread
                    set buftype = "nofile"
                    setlocal nobuflisted 
                ]])
            end
        end,
    },
})
