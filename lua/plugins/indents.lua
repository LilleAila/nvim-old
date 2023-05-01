return {
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup({
                show_current_context = true,
                filetype_exclude = { "dashboard" },
            })
        end
    }
}
