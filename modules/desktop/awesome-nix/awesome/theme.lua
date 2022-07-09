---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local gears = require("gears")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

--theme.font          = "sans 8"
theme.font          = "SpaceMono Nerd 8"

theme.bg_normal     = "#22222200"
theme.bg_focus      = "#39464c"--"#c7a3cc"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal


theme.wibar_bg_focus = "#070707"
--theme.fg_normal     = "#e7d17e"
--theme.fg_focus      = "#e7d17e"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.useless_gap   = dpi(1)
theme.border_width  = dpi(0)
theme.border_focus = "#B06AB3"--"#e7d17e"--"#000000"
theme.border_normal= "#206aff"--"#f1e5ed"--"#e7d17e"--"#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
theme.taglist_bg_focus = "#555555"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)
theme.titlebar_bg_focus = "#ffffff"

-- Variables set for theming notifications:
theme.notification_font = "SpaceMono Nerd 8"
theme.notification_bg = "#130d24"
theme.notification_fg = "#f77dc2"
theme.notification_max_width = 300;
theme.notification_border_color = "#f77dc2";
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
theme.notification_opacity = 1
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"


p = "~/.config/awesome/icons/"

theme.chrome =  p.."gradient-chrome_150.png" --"~/Pictures/icons/gchrome.png"
theme.spotify = p.."gradient-spotify.png"
theme.terminal= p.."gradient-console.png"
theme.drawer = p.."gradient-squares.png"
theme.battery_monitor = p.."gradient-battery_1.png"
theme.volume = p.."gradient-audio.png"
theme.ram_monitor= p.."gradient-task.png"
theme.shutdown= p.."gradient-shutdown.png"
theme.restart= p.."gradient-restart.png"
theme.lock= p.."gradient-secure.png"
theme.play = p.."gradient-play.png"
theme.pause = p.."gradient-pause.png"
theme.next = p.."gradient-end.png"
theme.prev = p.."gradient-start.png"
theme.delete= p.."gradient-delete.png"

-- Define the image to load
--theme.titlebar_close_button_normal = p.."gradient-cancel.png" 
-- themes_path.."default/titlebar/close_normal.png"
--theme.titlebar_close_button_focus  = p.. "gradient-cancel.png"--cancel_icons8_100.png"
-- themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

--theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
--theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
--theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
--theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"
--
--theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
--theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
--theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
--theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

--theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
--theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
--theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
--theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

--theme.titlebar_maximized_button_normal_inactive = "~/Pictures/icons/maximize.svg" -- themes_path.."default/titlebar/maximized_normal_inactive.png"
--theme.titlebar_maximized_button_focus_inactive  = "~/Pictures/icons/maximize.svg"-- themes_path.."default/titlebar/maximized_focus_inactive.png"
--theme.titlebar_maximized_button_normal_active = "~/Pictures/icons/minimize_edit.svg"-- themes_path.."default/titlebar/maximized_normal_active.png"
--theme.titlebar_maximized_button_focus_active  = "~/Pictures/icons/minimize_edit.svg"--themes_path.."default/titlebar/maximized_focus_active.png"

--- my custom variables
theme.bg_color  = "#555555"
theme.gradient_color = "linear:0,0:800,15:0,#4568DC:1,#f0f"
theme.titlebar_bottom = "linear:0,0:1200,15:0,#B06AB3:1,#4568DC"--:1--,#B06AB3"
theme.titlebar_left = "linear:0,0:0,500:0,#4568DC:1,#B06AB3"
theme.titlebar_right = "linear:2000,0:2000,700:0,#B06AB3:1,#4568DC"--:1,#B06AB3"
--theme.gradient_color_bg = "linear:0,0:700,0:0,#778db8:1,#c997c8" -- old One
theme.gradient_color_bg = "linear:0,0:700,0:0,#8ae1f2:1,#f77dc2" 
theme.fg_focus = theme.gradient_color
theme.fg_normal= theme.gradient_color
theme.progress_bar= "linear:0,0:100,15:0,#4568DC:1,#B06AB3"
theme.border_color = "linear:0,0:10,15:0,#4568DC:1,#B06AB3"
theme.border_focus = theme.border_color
--theme.pink = "#B06AB3"

theme.blue = "#4568DC"
theme.pink = "#f77dc2"
theme.titlebar_fg_focus = "#000000"--theme.gradient_color-- "#f1e5ed"
theme.titlebar_bg_focus = theme.gradient_color--"linear:0,0:0,12:0,#206aff:1,#c224ff"--theme.gradient_color--theme.bg_color 
theme.titlebar_fg_normal = "#0000000"--theme.gradient_color-- "#f1e5ed"
theme.titlebar_bg_normal = "#ffffff"--theme.gradient_color_bg-- "linear:0,0:0,20:0,#778db8:1,#ffafbd"--theme.gradient_color--theme.bg_color #ffc3a0 → #ffafbd
theme.wallpaper = "/home/blackshadow/.config/awesome/neon_galaxy.png" 
-- themes_path.."default/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

theme.titlebar_bgimage = function(context, cr, width, height)
    local pattern = gears.color("#a044ff")
    if client.focus == context.client then
        pattern = gears.color({ type = "linear",
                                from = { 0, 0 },
                                to = { width, 0 },
                                stops = { { 0, "#a044ff" },
                                          { 0.75, "#00d2ff" },
                                        },
                              })
    end
    cr:set_source(pattern)
    cr:paint()
end


--:1,"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80

