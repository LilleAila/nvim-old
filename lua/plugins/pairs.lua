return {
    {
        "windwp/nvim-autopairs",
        config = function()
            require('nvim-autopairs').setup({
                map_cr = true,
                map_complete = true,
                auto_select = true,
            })
        end
    },
    -- {
    --     "Raimondi/delimitMate",
    --     config = function()
    --         vim.cmd [[ let delimitMate_expand_cr = 1 ]]
    --         vim.cmd [[ let delimitMate_expand_space = 1 ]]
    --     end 
    -- }
}