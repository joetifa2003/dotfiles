return function()
  require("dap-go").setup {
    delve = {
      build_flags = "-tags=integration",
    },
  }
end
