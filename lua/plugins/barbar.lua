return {
    {
        "romgrk/barbar.nvim",
        dependencies = { 
            "nvim-tree/nvim-web-devicons", "lewis6991/gitsigns.nvim"
        },
        init = function()
            vim.g.barbar_auto_setup = false
            -- vim.g.barbar_theme = "catppuccin"
        end,
        opts = {
            sidebar_filetypes = {
                NvimTree = true,
            }
        }
    }
}
