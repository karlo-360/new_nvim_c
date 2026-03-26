return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },
        on_attach = function (bufnr)
            local gs = package.loaded.gitsigns

            vim.keymap.set("n", "<leader>hp", gs.preview_hunk, {
                buffer = bufnr,
                desc = "Preview hunk"
            })
        end
    },
}
