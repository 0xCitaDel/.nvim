return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            incrmental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-n>",
                    node_incremental = "<C-n>",
                    -- scope_incremental = "<C-s>",
                    node_decremental = "<C-m>",
                }
            },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
