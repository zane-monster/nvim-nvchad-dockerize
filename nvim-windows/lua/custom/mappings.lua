-- local map = require("core.utils").map

-- -- telescope
-- map("n", "<leader>fp", ":Telescope media_files <CR>")
-- map("n", "<leader>te", ":Telescope <CR>")
-- map("n", "<leader>ff", ":Telescope find_files<CR>")
-- map("n", "<leader>fg", ":Telescope live_grep<CR>")
-- map("n", "<leader>fb", ":Telescope buffers<CR>")
-- map("n", "<leader>fh", ":Telescope help_tags<CR>")

-- -- truezen
-- map("n", "<leader>ta", ":TZAtaraxis <CR>")
-- map("n", "<leader>tm", ":TZMinimalist <CR>")
-- map("n", "<leader>tf", ":TZFocus <CR>")

local M = {}

M.truzen = {
   n = {
      ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
      ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
      ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
   },
}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

return M