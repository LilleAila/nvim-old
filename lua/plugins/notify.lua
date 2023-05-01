return {
    {
        "rcarriga/nvim-notify",
        dependencies = {
            "folke/tokyonight.nvim"
        },
        after = "tokyonight.nvim",
        config = function()
            vim.notify = require("notify")
            vim.notify.setup({
                background_colour = "#000000",
                style = "minimal",
            })
        end
    }
}
