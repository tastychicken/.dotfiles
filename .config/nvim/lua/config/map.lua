-- custom binds
-- C is the CTRL key
-- S is the SHIFT key
-- <CR> is carriage return for commands
-- <silent> makes commands that might display stuff be silent

-- goto-preview
vim.keymap.set("", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<cr>")
vim.keymap.set("", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>")
vim.keymap.set("", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<cr>")
vim.keymap.set("", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<cr>")
vim.keymap.set("", "<C-c>", "<cmd>lua require('goto-preview').close_all_win()<cr>")
vim.keymap.set("", "<Esc>", "<cmd>lua require('goto-preview').close_all_win()<cr>")

-- trouble
vim.keymap.set("n", "<leader>td", "<cmd>Trouble diagnostics toggle<cr>")
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols toggle<cr>")
vim.keymap.set("n", "<leader>tl", "<cmd>Trouble lsp toggle<cr>")

--  telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fr', builtin.registers, {})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})

-- Visual block with Shift+f (normal keybind disrupted because of terminal)
vim.keymap.set("", "<S-f>", "<c-v>")

-- reload config
vim.keymap.set("", "<leader>r", ":source $HOME/.config/nvim/init.lua<CR>")

