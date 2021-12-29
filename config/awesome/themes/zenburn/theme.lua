-------------------------------------------
--        "Zenburn" awesome theme        --
--        By Wang-Zhou Dai (haldai)      --
-- Based on Adrian C. (anrxc)'s settings --
-------------------------------------------
local themes_path = require("gears.filesystem").get_themes_dir()
local home_path = os.getenv("HOME")
local script_path = home_path .. "/.scripts/"
local dpi = require("beautiful.xresources").apply_dpi
local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

-- {{{ Main
local theme = {
   wallpapers = { os.getenv("HOME") .. "/.config/awesome/themes/zenburn/DD.jpg",
                  os.getenv("HOME") .. "/.config/awesome/themes/zenburn/pw.jpg" },
   wallpaper_scales = {0.3, 0.25}
}
-- }}}

-- {{{ Styles
theme.font = "丁卯点阵体 9px 12"

-- {{{ Colors
local black0 = "#2B2B2B"
local black1 = "#3F3F3F"
local black2 = "#494949"
local black3 = "#4F4F4F"

local red1 = "#CC9393"
local red2 = "#9C6363"

local green1 = "#7F9F7F"
local green2 = "#5F7F5F"

local yellow1 = "#F0DFAF"
local yellow2 = "#D0BF8F"

local blue1 = "#8CD0D3"
local blue2 = "#94BFF3"

local magenta1 = "#DC8CC3"
local magenta2 = "#CB7BB2"

local cyan1 = "#93E0E3"
local cyan2 = "#82CFD2"

local white0 = "#BDBDBD"
local white1 = "#DCDCCC"
local white2 = "#FFFFEF"

local orange = "#DFAF8F"

theme.fg_normal  = white1
theme.fg_urgent  = yellow1
theme.bg_normal  = black2
theme.bg_focus   = black1
theme.bg_urgent  = red1
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(5)
theme.border_width  = dpi(2)
theme.border_normal = black3
theme.border_focus  = white1
theme.border_marked = red1
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = black1
theme.titlebar_bg_normal = black2
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
theme.tooltip_border_color = white2
theme.tooltip_bg = black2
theme.tooltip_fg = white1
theme.tooltip_font = theme.font
theme.tooltip_border_width = 2
theme.tooltip_opacity = 90
theme.tooltip_shape = nil
theme.tooltip_align = bottom_right
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
theme.widget_main_color = white1
theme.widget_red = red1
theme.widget_yellow = yellow1
theme.widget_green = green1
theme.widget_black = black2
theme.widget_transparent = "#00000000"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = red1
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height = dpi(28)
theme.menu_width  = dpi(128)
theme.menu_border_color = white1
theme.menu_border_width = 2
theme.menu_bg_focus = white1
theme.menu_fg_focus = black1
theme.menu_font = "丁卯点阵体 9px 12"
-- }}}

-- {{{ Icons
theme.lain_icons = os.getenv("HOME") .. "/.config/awesome/lain/icons/layout/zenburn/"
-- {{{ Taglist
theme.taglist_font = "丁卯点阵体 9px 12"
theme.taglist_bg_focus = black1
theme.taglist_fg_focus = orange
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon = themes_path .. "zenburn/awesome-icon.png"
theme.tasklist_font = "丁卯点阵体 9px 12"
theme.tasklist_font_focus = "丁卯点阵体 9px Bold 12"
theme.tasklist_bg_focus = orange
theme.tasklist_fg_focus = white1
-- }}}

-- {{{ Layout
theme.layout_tile       = themes_path .. "zenburn/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "zenburn/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "zenburn/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "zenburn/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "zenburn/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "zenburn/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "zenburn/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "zenburn/layouts/dwindle.png"
theme.layout_max        = themes_path .. "zenburn/layouts/max.png"
theme.layout_fullscreen = themes_path .. "zenburn/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "zenburn/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "zenburn/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "zenburn/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "zenburn/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "zenburn/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "zenburn/layouts/cornerse.png"
theme.layout_termfair    = theme.lain_icons .. "termfair.png"
theme.layout_centerfair  = theme.lain_icons .. "centerfair.png"  -- termfair.center
theme.layout_cascade     = theme.lain_icons .. "cascade.png"
theme.layout_cascadetile = theme.lain_icons .. "cascadetile.png" -- cascade.tile
theme.layout_centerwork  = theme.lain_icons .. "centerwork.png"
theme.layout_centerworkh = theme.lain_icons .. "centerworkh.png" -- centerwork.horizontal
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "zenburn/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "zenburn/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = themes_path .. "zenburn/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "zenburn/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "zenburn/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "zenburn/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "zenburn/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "zenburn/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "zenburn/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "zenburn/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themes_path .. "zenburn/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themes_path .. "zenburn/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "zenburn/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "zenburn/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themes_path .. "zenburn/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "zenburn/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "zenburn/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "zenburn/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

awful.util.tagnames = { "1", "2", "3" }
-- awful.util.tagnames = { "☰", "☱", "☲", "☳", "☴", "☵", "☶", "☷", "☯" }
-- awful.util.tagnames = { "樞", "璇", "璣", "權", "衡", "陽", "光", "輔", "弻" }

local markup     = lain.util.markup
local separators = lain.util.separators

--- {{{ RAM
theme.membar = wibox.widget {
   {
      max_value = 100,
      color = white1,
      background_color = black1,
      paddings = 1,
      border_width = 1,
      border_color = white1,
      ticks = false,
      widget = wibox.widget.progressbar,
   },
   forced_height = 5,
   forced_width = 10,
   direction = 'east',
   layout = wibox.container.rotate,
}
memwidget_t = awful.tooltip({ objects = { theme.membar },})

awful.widget.watch('bash -c "free -h --si | sed -n 2p"', 13,
                   function (widget, stdout)
                      if stdout ~= nil and stdout ~= "" then
                         mtab = {}
                         for val, unit in string.gmatch(stdout, "([%d.]+)(%a)") do
                            table.insert(mtab, {tonumber(val), unit})
                         end
                         if mtab[2][2] == "M" and mtab[1][2] == "G" then
                            mem_usage = mtab[2][1] / 1024 / mtab[1][1] * 100
                         elseif mtab[2][2] == "G" and mtab[1][2] == "G" then
                            mem_usage = mtab[2][1] / mtab[1][1] * 100
                         end
                         memwidget_t:set_text(string.format("RAM usage:\nTotal: %.1f%s\nUsed: %.1f%s\nFree: %.1f%s\nShared: %.1f%s\nCached: %.1f%s\nAvailable: %.1f%s", mtab[1][1], mtab[1][2], mtab[2][1], mtab[2][2], mtab[3][1], mtab[3][2], mtab[4][1], mtab[4][2], mtab[5][1], mtab[5][2], mtab[6][1], mtab[6][2]))
                         if mem_usage >= 80 then
                            theme.membar.widget:set_color(red1)
                         elseif mem_usage < 80 and mem_usage >= 70 then
                            theme.membar.widget:set_color(orange)
                         elseif mem_usage < 70 and mem_usage >= 45 then
                            theme.membar.widget:set_color(white1)
                         else
                            theme.membar.widget:set_color(blue1)
                         end
                         theme.membar.widget:set_value(mem_usage)
                      else
                         theme.membar.widget:set_color(white1)
                         theme.membar.widget:set_value(0)
                         memwidget_t:set_text(string.format("RAM usage: Unknown"))
                      end
end)

local membg = wibox.container.background(theme.membar, black2, gears.shape.rectangle)
local memwidget = wibox.container.margin(membg, 5, 8, 5, 5)
--- }}}

--- }}}

-- {{{ Wibar
local mylayouts = {
   {
      -- lain.layout.centerwork,
     awful.layout.suit.tile,
     awful.layout.suit.tile,
     awful.layout.suit.tile
   },
   { awful.layout.suit.fair.horizontal, awful.layout.suit.fair.horizontal, awful.layout.suit.fair.horizontal,
     awful.layout.suit.fair.horizontal, awful.layout.suit.fair.horizontal, awful.layout.suit.fair.horizontal,
     awful.layout.suit.fair.horizontal, awful.layout.suit.fair.horizontal, awful.layout.suit.fair.horizontal}
}

function theme.at_screen_connect(s)
   -- Quake application
   s.quake = lain.util.quake({ app = awful.util.terminal })
   screen_index = s.index

   -- Wallpaper
   local wallpaper = theme.wallpapers[screen_index]
   if type(wallpaper) == "function" then
      wallpaper = wallpaper(s)
   end
   gears.wallpaper.centered(wallpaper, s, theme.bg_normal, theme.wallpaper_scales[screen_index])

   -- Each screen has its own tag table.
   awful.tag(awful.util.tagnames, s, mylayouts[screen_index])

   -- Create a promptbox for each screen
   s.mypromptbox = awful.widget.prompt()
   -- Create an imagebox widget which will contain an icon indicating which layout we're using.
   -- We need one layoutbox per screen.
   s.mylayoutbox = awful.widget.layoutbox(s)
   s.mylayoutbox:buttons(my_table.join(
                            awful.button({ }, 1, function () awful.layout.inc( 1) end),
                            awful.button({ }, 3, function () awful.layout.inc(-1) end),
                            awful.button({ }, 4, function () awful.layout.inc( 1) end),
                            awful.button({ }, 5, function () awful.layout.inc(-1) end)))
   -- Create a taglist widget
   -- s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)
   s.mytaglist = awful.widget.taglist {
      screen = s,
      filter = awful.widget.taglist.filter.all,
      buttons = awful.util.taglist_buttons,
      style   = {
         shape = gears.shape.square,
         shape_border_width_focus = 0.5,
         shape_border_color_focus = orange,
         fg_occupied = orange,
         bg_urgent = black1,
         fg_urgent = red1,
         bg_focus = black1,
         fg_focus = orange,
      },
      layout   = {
         spacing = 7,
         spacing_widget = wibox.widget.textbox("<b>|</b>"),
         layout  = wibox.layout.fixed.horizontal
      },
   }

   -- Create a tasklist widget
   s.mytasklist = awful.widget.tasklist {
      screen = s,
      filter = awful.widget.tasklist.filter.currenttags,
      buttons = awful.util.tasklist_buttons,
      style = {
         spacing_widget = {
            {
               thickness = 1,
               color = white1,
            },
            valign = 'center',
            halign = 'center',
            widget = wibox.container.place,
         },
         spacing = nil,
         layout = wibox.layout.align.horizontal,
      },
      widget_template = {
         {
            wibox.widget.base.make_widget(),
            forced_height = 3,
            id = 'background_role',
            widget = wibox.container.background,
         },
         {
            {
               {
                  id = 'icon_role',
                  widget = wibox.widget.imagebox,
               },
               margins = 2,
               widget = wibox.container.margin
            },
            {
               {
                  id = 'text_role',
                  widget = wibox.widget.textbox,
               },
               margins = 2,
               widget = wibox.container.margin
            },
            layout = wibox.layout.align.horizontal,
         },
         layout = wibox.layout.align.vertical,
      },
   }
   -- Create the wibox
   s.mywibox = awful.wibar({ position = "top", height = 28, screen = s,
                             bg = "#00000000",
                             border_width = 1,
                             border_color = "#00000000",
                             fg = theme.fg_normal })

   -- Add widgets to the wibox
   s.mywibox:setup {
      layout = wibox.layout.align.horizontal,
      expand = outside,
      { -- Left widgets
         wibox.widget.textbox("<b>『</b>"),
         layout = wibox.layout.align.horizontal,
         s.mytaglist,
         wibox.widget.textbox("<b>』</b>"),
         -- s.mypromptbox,
      },
      s.mytasklist, -- Middle widget
      { -- Right widgets
         wibox.widget.textbox("<b>RAM</b>"),
         memwidget,
         wibox.widget.systray(),
         -- mytextclock,
         s.mylayoutbox,
         layout = wibox.layout.fixed.horizontal,
      },
   }
end
-- }}}

return theme
