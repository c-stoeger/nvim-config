return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "jay-babu/mason-nvim-dap.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_dap = require("mason-nvim-dap")

        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",
                "lua_ls",
                "ruff_lsp",
                "pyright",
                "neocmake",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true,
        })

        mason_dap.setup({
            ensure_installed = {
                "python",
            },
        })
    end,
}
