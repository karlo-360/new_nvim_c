return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",

    config = function()
        local TS = require("nvim-treesitter")

        TS.setup({
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "bash",
                "c",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "printf",
                "python",
                "regex",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "xml",
                "yaml",
                "go",
            },
        })
    end
}
