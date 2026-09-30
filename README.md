# CYBERDECK // ThinkPad T43 rice

Neon-noir 90s rice: Alpine Linux + i3 + urxvt, hot pink / ice cyan on void black.

| | |
|---|---|
| OS | Alpine Linux (i686) on a ThinkPad T43 |
| WM | i3 + i3status |
| Terminal | rxvt-unicode (urxvt) |
| Fonts | Terminus 16px, fastfetch art in IBM VGA 8x16 |
| Extras | tmux HUD, neon vim, dunst, lightdm-gtk-greeter theme |

## Files

- `.Xresources` - terminal palette + fonts
- `.config/i3/config` - Alt is the modifier (the T43 has no Super key)
- `.config/i3status/config` - top bar (network shows as IPoAC, RFC 1149)
- `.config/dunst/dunstrc` - notifications
- `.config/fastfetch/config.jsonc` - fastfetch layout
- `.config/fastfetch/temple.txt` - alt "HOLY C" logo (Terry A. Davis tribute)
- `.config/cyberdeck/prompt.sh` - shell prompt (sourced from `.profile`)
- `.config/fontconfig/conf.d/75-yes-vga-art.conf` - lets fontconfig use the VGA bitmap font
- `.tmux.conf`, `.vimrc`, GTK settings
- `.local/bin/run` / `newc` / `dev` - C helpers: compile+run, new project, coding layout
- `.local/bin/mkwall` - redraws the wallpaper at your screen size (`mkwall` or `mkwall 1920x1080`)
- `.local/share/cyberdeck/wall.png` - wallpaper (1024x768, regenerate with `mkwall`)
- `extras/` - login screen: lightdm-gtk-greeter.conf and a GTK theme
  (copy to `/etc/lightdm/` and `/usr/share/themes/Cyberdeck/gtk-3.0/`)

## Packages (Alpine)

    i3wm i3status dmenu rxvt-unicode feh dunst libnotify font-terminus
    fastfetch tmux vim scrot i3lock lightdm-gtk-greeter imagemagick

## Not included

- **The skull ASCII art** in the fastfetch logo belongs to its artist and isn't mine
  to redistribute. `config.jsonc` expects a logo at `~/.config/fastfetch/skull.txt`;
  drop in your own, or point `"source"` at `temple.txt`.
- **IBM VGA 8x16 font**: free from the Oldschool PC Font Pack
  (https://int10h.org/oldschool-pc-fonts/, CC BY-SA 4.0). Without it,
  remove the `,xft:VGA Art:pixelsize=16` parts from `.Xresources`.

## Keys

| Keys | Action |
|---|---|
| Alt+Enter | terminal |
| Alt+d | launcher |
| Alt+Shift+q | close window |
| Alt+Shift+x | lock screen |
| PrtSc | screenshot to ~/shots |
| Alt+Shift+c / r | reload / restart i3 |
| Alt+Shift+e | log out |
