-- Autopair plugins
--    https://github.com/windwp/nvim-autopairs
--    https://github.com/windwp/nvim-ts-autotag

return {
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false,
                },
            })
        end,
    },
}
