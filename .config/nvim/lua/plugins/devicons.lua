return function()
    local devicons = require('nvim-web-devicons')

    devicons.setup()

    for _, icon in pairs(devicons.get_icons()) do
        vim.api.nvim_command('highlight! DevIcon' .. icon.name .. ' cterm=nocombine')
    end

    function get_devicon_for_file(file)
        file = file or vim.fn.expand('%')

        local name = vim.fn.fnamemodify(file, ':p:h:t')
        local ext = vim.fn.fnamemodify(file, ':e')

        return devicons.get_icon(name, ext)
    end
end
