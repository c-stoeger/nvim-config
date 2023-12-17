return {
    "mfussenegger/nvim-dap",
    config = function()
        vim.keymap.set("n", "<Leader>dc", function()
            require("dap").continue()
        end, { desc = "Debug: Continue" })
        vim.keymap.set("n", "<Leader>dn", function()
            require("dap").step_over()
        end, { desc = "Debug: Step over" })
        vim.keymap.set("n", "<Leader>ds", function()
            require("dap").step_into()
        end, { desc = "Debug: Step into" })
        vim.keymap.set("n", "<Leader>dS", function()
            require("dap").step_out()
        end, { desc = "Debug: Step out" })
        vim.keymap.set("n", "<Leader>b", function()
            require("dap").toggle_breakpoint()
        end, { desc = "Debug: Toggle breakpoint" })
        vim.keymap.set("n", "<Leader>B", function()
            require("dap").set_breakpoint()
        end, { desc = "Debug: Set breakpoint" })
        vim.keymap.set("n", "<Leader>lp", function()
            require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
        end, { desc = "Debug: Set Logpoint" })
        vim.keymap.set("n", "<Leader>dr", function()
            require("dap").repl.open()
        end, { desc = "Debug: Open REPL" })
        vim.keymap.set("n", "<Leader>dl", function()
            require("dap").run_last()
        end, { desc = "Debug: Run last" })
        vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
            require("dap.ui.widgets").hover()
        end, { desc = "Debug: Show hover" })
        vim.keymap.set({ "n", "v" }, "<Leader>wp", function()
            require("dap.ui.widgets").preview()
        end, { desc = "Debug: Show preview" })
        vim.keymap.set("n", "<Leader>wf", function()
            local widgets = require("dap.ui.widgets")
            widgets.centered_float(widgets.frames)
        end, { desc = "Debug: Show frames" })
        vim.keymap.set("n", "<Leader>ws", function()
            local widgets = require("dap.ui.widgets")
            widgets.centered_float(widgets.scopes)
        end, { desc = "Debug: Show scopes" })
    end,
}
