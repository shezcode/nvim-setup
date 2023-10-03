vim.g.mapleader = " "
vim.g.copilot_no_tab_map = true

--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")                                 --toggle file explorer
vim.keymap.set("n", "<leader>gp", ":ChatGPT<CR>")                                       --run chatGPT extension
vim.keymap.set("n", "<leader>gr", ":ChatGPTRun")                                        --run chatGPT extension
vim.keymap.set("i", "jj", "<ESC>")                                                      --jj to escape insert mode
vim.keymap.set("i", "<C-x>", 'copilot #Accept("<CR>")', { silent = true, expr = true }) --copilot extension
