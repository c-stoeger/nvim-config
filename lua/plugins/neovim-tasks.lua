return {
    "Shatur/neovim-tasks",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local tasks = require("tasks")
        tasks.setup({
            params_file = "cmake.json",
        })

        -- set keymaps
        vim.keymap.set("n", "<leader>cmc", "<cmd>Task start cmake configure<cr>", { desc = "Task: CMake configure" })
        vim.keymap.set("n", "<leader>cmb", "<cmd>Task start cmake build<cr>", { desc = "Task: CMake build" })
        vim.keymap.set("n", "<leader>cmx", "<cmd>Task start cmake clean<cr>", { desc = "Task: CMake clean" })
    end,
}
