return {
    "bluz71/vim-nightfly-colors",
    priority = 1000, --- load before other plugins
    name = "nightfly",
    lazy = false, -- lazy loading is default false. Not really needed here.
    config = function()
        -- load it into vim
        vim.cmd([[colorscheme nightfly]])
    end
}
