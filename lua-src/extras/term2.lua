local cmd_name = 'FloattyToggle'

return {
    -- 'nigromante/floatty.nvim',
    dir = '~/.config/nvim/lua-src/dev/floatty.nvim',
    opts = {
        key_sequence = ':' .. cmd_name .. '<Cr>i',
        command = cmd_name,
        keymap = '<leader>tx',
        description = '[T]oggle [X]terminal',
    },
}
