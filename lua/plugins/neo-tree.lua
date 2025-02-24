return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({

            filesystem = {
                window = {
                    mapping_options = {
                        noremap = true,
                        nowait = false,
                    },
                    mappings = {
                        -- Custom mappings
                        ["o"] = {
                            command = "open",
                            nowait = true,
                        },

                        -- Deleted particular default mappings
                        ["oc"] = "noop",
                        ["od"] = "noop",
                        ["og"] = "noop",
                        ["om"] = "noop",
                        ["on"] = "noop",
                        ["os"] = "noop",
                        ["ot"] = "noop",

                        -- Changed sort mappings
                        ["O"] = { "show_help", nowait = false, config = { title = "Order by", prefix_key = "O" } },
                        ["Oc"] = { "order_by_created", nowait = false },
                        ["Od"] = { "order_by_diagnostics", nowait = false },
                        ["Og"] = { "order_by_git_status", nowait = false },
                        ["Om"] = { "order_by_modified", nowait = false },
                        ["On"] = { "order_by_name", nowait = false },
                        ["Os"] = { "order_by_size", nowait = false },
                        ["Ot"] = { "order_by_type", nowait = false },
                    },
                },
            },
        })
        vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
        vim.keymap.set("n", "<leader>o", "<cmd>Neotree float git_status<CR>")
    end,
}
