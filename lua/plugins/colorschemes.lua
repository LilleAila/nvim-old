return {
    {
        "folke/tokyonight.nvim",
        start = true,
        config = function()
            require("tokyonight").setup {
                transparent = true,
                styles = {
                    sidebars = "transparent",
                    floats = "dark",
                },
                style = "storm"
            }

            vim.cmd([[colorscheme tokyonight]])
        end
    }
}