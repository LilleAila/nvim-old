return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "folke/tokyonight.nvim"
        },
        after = "tokyonight.nvim",
        config = function()
            local sections = {
                lualine_a = {"mode"},
                lualine_b = {"branch"},
                lualine_c = {"filename"},
                lualine_x = {"encoding", "fileformat", "filetype"},
                lualine_y = {"progress"},
                lualine_z = {"location"}
            }
            require("lualine").setup({
                options = {
                    theme = "catppuccin",
                },
                sections = sections,
                extensions = {
                    "nvim-tree"
                }
            })

            vim.o.termguicolors = true
        end
    }
}
