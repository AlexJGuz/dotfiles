local get_hex = require('cokeline.hlgroups').get_hl_attr

require('cokeline').setup({
    default_hl = {
        fg = function(buffer)
            return
                buffer.is_focused
                and get_hex('Normal', 'fg')
                or get_hex('Comment', 'fg')
        end,
        bg = function(buffer)
            return
                buffer.is_focused
                and get_hex('ColorColumn', 'bg')
                or "NONE"
        end,
    },
    components = {
        {
            text = function(buffer)
                return
                    buffer.is_focused
                    and ''
                    or ' '
            end, 
            fg = function(buffer)
                return
                    buffer.is_focused
                    and get_hex('ColorColumn', 'bg')
                    or "NONE"
            end,
            bg = 'NONE'
        },

        {
            text = function(buffer) return '   ' .. buffer.devicon.icon end,
            fg = function(buffer) return buffer.devicon.color end,
        },
        {
            text = function(buffer) return buffer.filename .. ' ' end,
            bold = function(buffer) return buffer.is_focused end,
        },
        {
            text = function(buffer) return
                    buffer.is_modified and ' ' or '  '
            end,
        },
        {
            text = function(buffer)
                return
                    buffer.is_focused
                    and ''
                    or ' '
            end, 
            fg = function(buffer)
                return
                    buffer.is_focused
                    and get_hex('ColorColumn', 'bg')
                    or "NONE"
            end,
            bg = 'NONE'
        },
    },
})

