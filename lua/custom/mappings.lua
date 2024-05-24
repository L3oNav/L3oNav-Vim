-- -@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>w"] = { "<cmd> w <CR>", "Save file" },
    -- Copilot panel
    ["<leader>gp"] = { "<cmd> lua require('copilot.panel').open() <CR>", "Toggle Copilot panel" },
    -- Copilot next
    ["<leader>g>"] = { "<cmd> lua require('copilot.panel').jump_next() <CR>", "Next panel" },
    -- Copilot prev
    ["<leader>g<"] = { "<cmd> lua require('copilot.panel').jump_prev() <CR>", "Previous panel" },
    -- copilot refresh
    ["<leader>"] = { "<cmd> lua require('copilot.panel').refresh() <CR>", "Refresh  suggestions" },
    -- Copilot dismiss
    ["<ESC>"] = { "<cmd> lua require('copilot.panel').dismiss() <CR>", "Dismiss  panel" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  i = {
    -- Copilot Accept
    ["<C-l>"] = { "<cmd> lua require('copilot.suggestion').accept() <CR>", "Accept suggestion"}
     
  },
}

M.nvimtree = {
  n = {
    -- toggle
    ["<leader>Z"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    -- focus
    ["<leader>z"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
  },
}

M.tabufline = {
  n = {
    ["<leader>q"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

-- more keybinds!
--
return M
