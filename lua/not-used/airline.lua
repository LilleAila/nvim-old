return {
    {
        "vim-airline/vim-airline",
        dependencies = {
            "ryanoasis/vim-devicons",
            "vim-airline/vim-airline-themes",
        },
        config = function()
            vim.g.airline_powerline_fonts = 1
            -- vim.g.airline_symbols = "nerdfont" -- Breaks everything for some reason
            vim.cmd("AirlineTheme onedark")
            -- vim.g.airline_left_sep = ">"
            -- vim.g.airline_right_sep = "<"
            vim.o.showmode = false
            vim.o.tabline = 2
        end        
    },
    -- {
    --     "ryanoasis/vim-devicons",
    --     after = "vim-airline"
    -- }
}