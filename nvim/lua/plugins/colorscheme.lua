return {
    { 
        "catppuccin/nvim",
        name = "catppuccin",
        config = function ()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                styles = {
                    keywords = { "bold" },
                    functions = { "italic" },
                },
                integrations = {
                    cmp = true,
                    nvimtree = true,
                    treesitter = true,
                    bufferline = true,
                    mason = true,
                    nvim_surround = true,
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { "italic" },
                            hints = { "italic" },
                            warnings = { "italic" },
                            information = { "italic" },
                            ok = { "italic" },
                        },
                        underlines = {
                            errors = { "underline" },
                            hints = { "underline" },
                            warnings = { "underline" },
                            information = { "underline" },
                            ok = { "underline" },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                }
            })
            vim.cmd.colorscheme("catppuccin")
        end
    },
}
