return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "gopls",
            "clangd",
            "html",
            "pyright",
            "cssls",
            "kotlin_language_server"
        }
    },
    dependencies = {
        {
            "mason-org/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    },
                },
            },
        },
        {
            "neovim/nvim-lspconfig",
            config = function ()
                local opts = { noremap = true, silent = true }

                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
                vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
                vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, opts)

                vim.lsp.config.lua_ls = {
                    cmd = { "lua-language-server" },
                    filetypes = { "lua" },
                    settings = {
                        Lua = {
                            diagnostics = {
                                disable = { "lowercase-global" }
                            }
                        }
                    }
                }

                vim.api.nvim_create_autocmd("LspAttach", {
                  callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)

                    if client.name == "gopls" then
                      vim.keymap.set("n", "<leader>pg","<cmd>!go run .<cr>", { buffer = args.buf, desc = "Go run (gopls attached)" })
                    end
                  end,
                })

            end
        },
    }
}
