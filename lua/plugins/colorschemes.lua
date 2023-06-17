return {
    -- {
    --     "folke/tokyonight.nvim",
    --     start = true,
    --     config = function()
    --         require("tokyonight").setup {
    --             transparent = true,
    --             styles = {
    --                 sidebars = "transparent",
    --                 floats = "dark",
    --             },
    --             style = "storm"
    --         }
    --
    --         vim.cmd([[colorscheme tokyonight]])
    --     end
    -- },
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
                transparent_background = true,
            })
            vim.cmd.colorscheme "catppuccin"
        end
    }
}
