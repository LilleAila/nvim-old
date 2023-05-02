return {
    {
        "MunifTanjim/prettier.nvim",
        config = function()
            require("prettier").setup({
                bin = 'prettierd',
                filetypes = {
                  "css",
                  "graphql",
                  "html",
                  "javascript",
                  "javascriptreact",
                  "json",
                  "less",
                  "markdown",
                  "scss",
                  "typescript",
                  "typescriptreact",
                  "yaml",
                },
                cli_options = {
                    bracket_spacing = true,
                    bracket_same_line = false,
                    prose_wrap = "preserve",
                    single_attribute_per_line = false,
                    single_quote = false,
                    tab_width = 4,
                    trailing_comma = "es5",
                    use_tabs = false,
                    config_precedence = "cli-override",
                  },
              })
        end
    }
}
