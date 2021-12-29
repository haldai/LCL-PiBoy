# Archlinux Awesome WM configs for LCL Raspberry GameBoy Pi 4

Author: Wang-Zhou Dai (dai.wzero@gmail.com)

## Introduction & Packages

I use [AwesomeWM](https://awesomewm.org/) and [LightDM](https://wiki.archlinux.org/title/LightDM) as main desktop environment and manager for LCL RBPi Gameboy. They have several benefits:

- Low resource & fast responsiveness comparing to Gnome and KDE
- AwesomeWM is a tiling desktop, which is more efficient and fits the small screen on GameBoy
- Easy to customize and everything (e.g., shortcuts, desktop behaviour) is undercontrol (in `.config/awesome/rc.lua`)
- Mapping joypad buttons to key combinations and mouse movements can be easily implemented by [antimicroX](https://github.com/AntiMicroX/antimicrox)

## Main softwares

Many of the used softwares are [AUR packages](https://wiki.archlinux.org/title/AUR_helpers), which should be installed with an AUR helper such as [yay](https://github.com/Jguer/yay).

Joypad mapping is done by [antimicroX](https://github.com/AntiMicroX/antimicrox), which has two major profiles under `.var/app/io.github.antimicrox.antimicrox`:

- `GB_awesome.gamecontroller.amgp`: Default mapping, works in desktop
- `empty.gamecontroller.amgp`: Maps to nothing, works in retroarch, SteamLink and Moonlight (they have their own mapping methods).

The on-screen keyboard is [onboard](https://launchpad.net/onboard). Use it with
mouse (joystick and L/R button). Let's hope LCL can upgrade the LCD to a touch
screen!

Other useful packages installed ("optional" packages can be uninstalled freely).

- 8188eu-dkms (WiFi driver)
- dosbox-sdl2 (DOS emulator, optional)
- moonlight-qt (PC game streaming, optional)
- otf-eb-garamond (Font, optional)
- otf-vollkorn (Font, optional)
- paper-icon-theme-git (Icon pack)
- python-pysdl2 (SDL2 python wrapper)
- retroarch-rbp-git (Emulator, optional)
- rofi-bluetooth-git (Bluetooth controller)
- sdl2_sound-hg (SDL sound support)
- oh-my-zsh-git (zsh theme)
- spaceship-prompt-git (zsh theme)
- steamlink-raspberrypi (PC game streaming, optional)
- yay (AUR helper)

## Manual

Here are the main usages.

### Usage

Download all folders and change their names by adding a `.` (dot) at the begining, then move them to `/home/alarm`. For example:

```shell
git clone git@github.com:haldai/LCL-PiBoy.git && cd LCL-PiBoy # clone this repo
mv config /home/alarm/.config # add a '.' infront of 'config/' and move it to home directory
```

If there are any collision needs overwriting, please check carefully.

If you do not want to check them one-by-one, you could install all of them by
running:

``` shell
chmod +x setup.sh && ./setup.sh
```

### Joypad Mapping

| Joypad | Keys              | Function                                   |
| ------ | ----------------- | ------------------------------------------ |
| Dpad   | Arrow Keys        |                                            |
| Joypad | Mouse Movement    |                                            |
| A      | Enter             |                                            |
| B      | Esc               |                                            |
| X      | Super (Win)       | Meta-key for AwesomeWM                     |
| Y      | Super + F4        | Toggle on-screen keyboard                  |
| L      | Mouse left click  |                                            |
| R      | Mouse right click | (a click on desktop opens a dropdown menu) |
| L2     | -                 |                                            |
| R2     | Super + j         | Toggle fullscreen                          |
| Start  | Super + d         | Open main menu                             |
| Select | Super + Shift + q | close window                              |

Button combinations:

| Joypad                | Keys               | Function                     |
| --------------------- | ------------------ | ---------------------------- |
| X + A                 | Super + Enter      | Open terminal                |
| X + Dpad (left/right) | Super + Arrow Keys | Move to different workspaces |

### Package Managing

For updating the entire system, just run:

```shell
yaupg
```

To install any package, you could search the package name `pkgname` and install it via

```
yay ${pkgname}
```

If you know the package name, the installation can be done by

```
yain ${pkgname}
```

or

```
sudo pacman -S ${pkgname}
```

For more usage of Arch Linux and AwesomeWM, please consult their official
websites:
- [AwesomeWM Documentation](https://awesomewm.org/doc/api/)
- [Archwiki](https://wiki.archlinux.org/)

## Issues

### Screen tearing

Screen may tear in games or firefox. To solve the problem, put
`config/picom.conf` in `/home/alarm/.config/` and install
[picom](https://wiki.archlinux.org/title/Picom) via

``` shell
yain picom
```

Then add a line `picom --config ~/.config/picom.conf` in `/home/alarm/.config/awesome/autostart.sh`.
