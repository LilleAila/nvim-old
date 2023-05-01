return {
    {
        'nvim-treesitter/nvim-treesitter',
        -- version = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "windwp/nvim-ts-autotag",
            "mrjones2014/nvim-ts-rainbow"
        },
        -- lazy = false,
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            context_commentstring = { enable = true, enable_autocmd = false },
            ensure_installed = {
                "lua", 
                "luadoc",
                "luap",
                "vim"
            },
            autotag = {
                enable = true,
                autotag_rename_tag = true
            },
            rainbow = {
                enable = true,
                -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                max_file_lines = nil, -- Do not enable for files with more than n lines, int
                -- colors = {}, -- table of hex strings
                -- termcolors = {} -- table of colour name strings
              },
            
        },
        config = function(_, opts)
            require('nvim-treesitter.configs').setup(opts)
        end
    }
}