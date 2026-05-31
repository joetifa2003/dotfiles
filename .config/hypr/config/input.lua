hl.config({
  input = {
    kb_layout = "us,eg",
    kb_variant = "",
    kb_model = "",
    kb_options = "grp:alt_shift_toggle",
    kb_rules = "",
    repeat_delay = 250,
    repeat_rate = 30,
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
      natural_scroll = false,
    },
  },
})

hl.device({
  name = "epic-mouse-v1",
  sensitivity = -0.5,
})
