return {
  {
    'leoluz/nvim-dap-go',
    lazy = false,
    opts = {
      delve = {
        build_flags = '-tags=integration',
      },
    },
    dependencies = { 'mfussenegger/nvim-dap' },
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    lazy = false,
    opts = {
      virt_text_pos = 'eol',
    },
    dependencies = { 'mfussenegger/nvim-dap' },
  },
  {
    'rcarriga/nvim-dap-ui',
    lazy = false,
    config = function()
      local dap, dapui = require 'dap', require 'dapui'
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
  },
  {
    'mfussenegger/nvim-dap',
    lazy = false,
    keys = {
      {
        '<F5>',
        function()
          require('dap').continue()
        end,
        mode = 'n',
        desc = '[DAP] Continue',
      },
      {
        '<F9>',
        function()
          require('dap').toggle_breakpoint()
        end,
        mode = 'n',
        desc = '[DAP] Toggle breakpoint',
      },
      {
        '<F10>',
        function()
          require('dap').step_over()
        end,
        mode = 'n',
        desc = '[DAP] Toggle breakpoint',
      },
      {
        '<F11>',
        function()
          require('dap').step_into()
        end,
        mode = 'n',
        desc = '[DAP] Step into',
      },
      {
        '<F12>',
        function()
          require('dap').step_out()
        end,
        mode = 'n',
        desc = '[DAP] Step out',
      },
    },
  },
}
