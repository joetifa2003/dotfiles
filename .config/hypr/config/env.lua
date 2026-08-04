hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")
hl.env("NVD_BACKEND", "direct")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("__VK_LAYER_NV_optimus", "NVIDIA_only")

-- QT stuff
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QSG_RENDER_LOOP", "threaded")
hl.env("QSG_RHI_BACKEND", "vulkan")
hl.env("__GL_SYNC_TO_VBLANK", "0")

hl.config({
	misc = {
		vrr = 0,
	},
	debug = {
		vfr = false,
	},
})
