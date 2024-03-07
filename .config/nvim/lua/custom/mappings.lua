---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["]b"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },
    ["[b"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

M.lsp = {
  n = {
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "Code actions",
    },
    ["<leader>ld"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "Open diagnostics under cursor",
    },
  },
}

M.dap = {
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "debugger",
    },
    ["<F9>"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "debugger",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "debugger",
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "debugger",
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "debugger",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>ls"] = {
      function()
        require("telescope.builtin").lsp_document_symbols {}
      end,
      "LSP symbols",
    },
    ["<leader>lws"] = {
      function()
        require("telescope.builtin").lsp_dynamic_workspace_symbols {}
      end,
      "LSP workspace symbols",
    },
    ["<leader>lD"] = {
      function()
        require("telescope.builtin").diagnostics {}
      end,
      "LSP diagnostics",
    },
    ["<leader>lcd"] = {
      function()
        require("telescope.builtin").diagnostics { bufnr = 0 }
      end,
      "LSP diagnostics",
    },
    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references {}
      end,
      "LSP references",
    },
    ["gi"] = {
      function()
        require("telescope.builtin").lsp_implementations {}
      end,
      "LSP implementationsk",
    },
  },
}

M.lazygit = {
  n = {
    ["<leader>gg"] = {
      function()
        vim.cmd "LazyGit"
      end,
      "Open lazygit",
    },
  },
}

M.splits = {
  n = {
    ["<A-h>"] = {
      function()
        require("smart-splits").resize_left()
      end,
    },
    ["<A-l>"] = {
      function()
        require("smart-splits").resize_right()
      end,
    },
    ["<A-k>"] = {
      function()
        require("smart-splits").resize_up()
      end,
    },
    ["<A-j>"] = {
      function()
        require("smart-splits").resize_down()
      end,
    },
    ["<C-h>"] = {
      function()
        require("smart-splits").move_cursor_left()
      end,
    },
    ["<C-j>"] = {
      function()
        require("smart-splits").move_cursor_down()
      end,
    },
    ["<C-k>"] = {
      function()
        require("smart-splits").move_cursor_up()
      end,
    },
    ["<C-l>"] = {
      function()
        require("smart-splits").move_cursor_right()
      end,
    },
  },
}

M.grapple = {
  n = {
    ["<leader>a"] = {
      function()
        require("grapple").tag()
      end,
      "Harpoon append",
    },
    ["<leader>h"] = {
      function()
        require("grapple").toggle_tags()
      end,
      "Harpoon list",
    },
    ["]]"] = {
      function()
        require("grapple").cycle_forward()
      end,
      "Harpoon next",
    },
    ["[["] = {
      function()
        require("grapple").cycle_backward()
      end,
      "Harpoon prev",
    },
  },
}

return M
