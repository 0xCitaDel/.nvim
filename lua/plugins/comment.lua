return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            ---LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                ---Block-comment keymap
                line = "<leader>cl",
                block = "<leader>c",
            },
        })
    end,
}
