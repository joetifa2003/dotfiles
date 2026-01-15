return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'leoluz/nvim-dap-go',
    'nvim-neotest/nvim-nio',
  },
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
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'
    dapui.setup()

    local dapVirtText = require 'nvim-dap-virtual-text'
    dapVirtText.setup {
      virt_text_pos = 'eol',
    }

    local dapGo = require 'dap-go'
    dapGo.setup {
      delve = {
        build_flags = {'-tags=integration'},
      },
    }

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
}
