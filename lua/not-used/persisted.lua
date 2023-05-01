return {
    {
        "olimorris/persisted.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-tree/nvim-tree.lua" },
        after = { "telescope.nvim", "nvim-tree.lua" },
        event = "BufReadPre",
        lazy = false,
        module = "persistence",
        config = function()
            require("persisted").setup({
                autosave = function()
                    if vim.bo.filetype == "dashboard" then
                        return false
                    end
                    return true
                end,
                follow_cwd = true,

            })
            -- vim.cmd("autocmd PersistedLoadPost * NvimTreeToggle")
            
            local group = vim.api.nvim_create_augroup("PersistedHooks", {})

            vim.api.nvim_create_autocmd({ "User" }, {
                pattern = "PersistedSavePre",
                group = group,
                callback = function()
                    pcall(vim.cmd, "NvimTreeClose")
                end,
            })

            -- vim.api.nvim_create_autocmd({ "User" }, {
            --     pattern = "PersistedLoadPost",
            --     group = group,
            --     callback = function ()
            --         -- pcall(vim.cmd, "NvimTreeRefresh")
            --         pcall(vim.cmd, "NvimTreeOpen")
            --     end,
            -- })

            require("telescope").load_extension("persisted")
        end,
    }
}
