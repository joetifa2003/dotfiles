hl.window_rule({ match = { class = "waypaper" }, float = true })
hl.window_rule({ match = { class = "wwm.exe" }, immediate = true })

hl.workspace_rule({ workspace = "w[tv1]", gaps_in = 0, gaps_out = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0, rounding = 0 })
