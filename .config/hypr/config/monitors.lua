hl.monitor({ output = "HDMI-A-1", mode = "2560x1440@144", position = "0x0", scale = 1 })
hl.monitor({ output = "eDP-1", mode = "highrr", position = "2560x0", scale = 1.25 })

hl.config({
  xwayland = {
    force_zero_scaling = true,
  },
})
