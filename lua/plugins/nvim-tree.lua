return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({
                update_cwd = true
            })

            local map = vim.keymap.set

            vim.g.nvim_tree_transparent_bg = 1

            map("n", "<leader>pv", "<cmd>NvimTreeFocus<cr>", { desc = "Focus Nvim Tree" })
            map("n", "<leader>pt", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Nvim Tree" })
        end
    }
}
