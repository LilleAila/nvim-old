return {
    -- {
    --     'echasnovski/mini.map',
    --     version = false,
    --     config = function()
    --         require("mini.map").setup()
    --     end
    -- },
    {
        "petertriho/nvim-scrollbar",
        dependencies = { "lewis6991/gitsigns.nvim" },
        after = { "gitsigns.nvim" },
        config = function()
            require("scrollbar").setup {
                exclude_filetypes = { "NvimTree", "dashboard" }
            }
        end
    }
}
