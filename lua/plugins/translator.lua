return {
    "uga-rosa/translate.nvim",
    config = function()
        require("translate").setup({})
        vim.keymap.set('n', '<leader>tw', '<cmd>Translate ru<CR>')
        vim.keymap.set('v', '<leader>tw', '<cmd>Translate ru<CR>')
    end
}
