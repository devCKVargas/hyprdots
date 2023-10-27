###### *<div align = right><sub>// design by t2</sub></div>*
<div align = center><img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/hyprdots_banner.png"><br><br>

&ensp;[<kbd> <br> Install <br> </kbd>](#Installation)&ensp;
&ensp;[<kbd> <br> Themes <br> </kbd>](#Theming)&ensp;
&ensp;[<kbd> <br> Styles <br> </kbd>](#Styles)&ensp;
&ensp;[<kbd> <br> Packages <br> </kbd>](#Packages)&ensp;
&ensp;[<kbd> <br> Keybindings <br> </kbd>](#Keybindings)&ensp;
&ensp;[<kbd> <br> Youtube <br> </kbd>](#Playlist)&ensp;
&ensp;[<kbd> <br> KnownIssues <br> </kbd>](#Known-Issues)&ensp;
<br><br><br><br></div>


<https://user-images.githubusercontent.com/106020512/235429801-e8b8dae2-c1ad-4e23-9aa2-b1edb6cabe99.mp4>

<p align="center">
    <img align="center" width="49%" src="https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/showcase_1.png" /> <img align="center" width="49%" src="https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/showcase_2.png" />   
    <img align="center" width="49%" src="https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/showcase_3.png" /> <img align="center" width="49%" src="https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/showcase_4.png" />   
</p>

https://github.com/prasanthrangan/hyprdots/assets/106020512/c995699a-299c-4a8e-99d4-71aa3d68eb93


### Installation

The installation script is made for Arch, but **may** work on some Arch based distros.
For Debian, please refer **Senshi111**'s version [here](https://github.com/Senshi111/debian-hyprland-hyprdots). <br>
Tested on: <br>

- [EndeavourOS](https://endeavouros.com/)
- [Arco Linux](https://arcolinux.info/)
- [Arch using ALCI - Arch Linux Calamares Installer](https://alci.online/)

> **Warning**
>
> Install script will auto-detect nvidia card and install nvidia-dkms drivers for your kernel.
> Nvidia drm will be enabled in grub, so please [ensure](https://wiki.archlinux.org/title/NVIDIA) your nvidia card supports dkms drivers/hyprland.

After minimal Arch install (with grub), clone and execute -

```shell
sudo pacman -Sy git
git clone https://github.com/devckvargas/hyprdots ~/Hyprdots
cd ~/Hyprdots/Scripts
```

> **Note**
>
> Add apps you want to install (replace **nvim** with your own editor e.g. nano, vim, code, kate, etc..)
>
> ```shell
>nvim ~/Hyprdots/Scripts/custom_apps.lst
>```
>
> Pass the file as a parameter to install it -
>
>
>```shell
>./install.sh custom_apps.lst
>```

Please **reboot after the install script completes and takes you to sddm login screen (or black screen)** for the first time.
For more details, please refer [installation wiki](https://github.com/devckvargas/hyprdots/wiki/Installation)


<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)
</div>

## Theming

To add your own custom theme, please refer [theming wiki](https://github.com/prasanthrangan/hyprdots/wiki/Theming)

- Available themes
  - [x] Catppuccin-Mocha
  - [x] Catppuccin-Latte
  - [x] Decay-Green
  - [x] Rosé-Pine
  - [x] Tokyo-Night
  - [x] Material-Sakura
  - [x] Graphite-Mono
  - [x] Cyberpunk-Edge
  - [ ] Nordic-Blue (maybe later)

- Contributors themes
  - [x] Frosted-Glass by T-Crypt
  - [x] Gruvbox-Retro by T-Crypt

| Catppuccin-Mocha |
| :-: |
| ![Catppuccin-Mocha#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_mocha_1.png) |
| ![Catppuccin-Mocha#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_mocha_2.png) |

| Catppuccin-Latte |
| :-: |
| ![Catppuccin-Latte#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_latte_1.png) |
| ![Catppuccin-Latte#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_latte_2.png) |

| Decay-Green |
| :-: |
| ![Decay-Green#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_decay_1.png) |
| ![Decay-Green#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_decay_2.png) |

| Rosé-Pine |
| :-: |
| ![Rosé-Pine#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_rosine_1.png) |
| ![Rosé-Pine#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_rosine_2.png) |

| Tokyo-Night |
| :-: |
| ![Tokyo-Night#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_tokyo_1.png) |
| ![Tokyo-Night#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_tokyo_2.png) |

| Material-Sakura |
| :-: |
| ![Material-Sakura#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_maura_1.png) |
| ![Material-Sakura#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_maura_2.png) |

| Graphite-Mono |
| :-: |
| ![Graphite-Mono#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_graph_1.png) |
| ![Graphite-Mono#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_graph_2.png) |

| Cyberpunk-Edge |
| :-: |
| ![Cyberpunk-Edge#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_cedge_1.png) |
| ![Cyberpunk-Edge#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_cedge_2.png) |

| Frosted-Glass |
| :-: |
| ![Frosted-Glass#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_frosted_1.png) |
| ![Frosted-Glass#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_frosted_2.png) |

| Gruvbox-Retro |
| :-: |
| ![Gruvbox-Retro#1](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_gruvbox_1.png) |
| ![Gruvbox-Retro#2](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_gruvbox_2.png) |

<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)
</div>

## Styles

| Theme Select |
| :-: |
| ![Theme Select](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/theme_select.png) |

| Wallpaper Select |
| :-: |
| ![Wallpaper Select](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/walls_select.png) |

| Launcher Style Select |
| :-: |
| ![Launcher Style Select](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_sel.png) |

| Launcher Styles |
| :-: |
| ![rofi style#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_1.png) |
| ![rofi style#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_2.png) |
| ![rofi style#3](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_3.png) |
| ![rofi style#4](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_4.png) |
| ![rofi style#5](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_5.png) |
| ![rofi style#6](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_6.png) |
| ![rofi style#7](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_7.png) |
| ![rofi style#8](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/rofi_style_8.png) |

| Wlogout Menu |
| :-: |
| ![Wlogout Menu#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/wlog_style_1.png) |
| ![Wlogout Menu#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/wlog_style_2.png) |

| Game Launchers |
| :-: |
| ![Game Launchers#1](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/game_launch_1.png) |
| ![Game Launchers#2](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/game_launch_2.png) |
| ![Game Launchers#3](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/game_launch_3.png) |
| ![Game Launchers#4](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/game_launch_4.png) |


<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)
</div>

## Packages

<table><tr><td>
<code>n</code><br><code>v</code><br><code>i</code><br><code>d</code><br><code>i</code><br><code>a</code></td><td><table>
    <tr><td>linux-headers</td><td>for main kernel (script will auto detect from /usr/lib/modules/)</td></tr>
    <tr><td>linux-zen-headers</td><td>for zen kernel (script will auto detect from /usr/lib/modules/)</td></tr>
    <tr><td>linux-lts-headers</td><td>for lts kernel (script will auto detect from /usr/lib/modules/)</td></tr>
    <tr><td>nvidia-dkms</td><td>nvidia drivers (script will auto detect from lspci -k | grep -A 2 -E "(VGA|3D)")</td></tr>
    <tr><td>nvidia-utils</td><td>nvidia utils (script will auto detect from lspci -k | grep -A 2 -E "(VGA|3D)")</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>u</code><br><code>t</code><br><code>i</code><br><code>l</code><br><code>s</code></td><td><table>
    <tr><td>pipewire</td><td>audio and video server</td></tr>
    <tr><td>pipewire-alsa</td><td>for audio</td></tr>
    <tr><td>pipewire-audio</td><td>for audio</td></tr>
    <tr><td>pipewire-jack</td><td>for audio</td></tr>
    <tr><td>pipewire-pulse</td><td>for audio</td></tr>
    <tr><td>gst-plugin-pipewire</td><td>for audio</td></tr>
    <tr><td>wireplumber</td><td>audio and video server</td></tr>
    <tr><td>networkmanager</td><td>network manager</td></tr>
    <tr><td>network-manager-applet</td><td>nm tray</td></tr>
    <tr><td>bluez</td><td>for bluetooth</td></tr>
    <tr><td>bluez-utils</td><td>for bluetooth</td></tr>
    <tr><td>blueman</td><td>bt tray</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>l</code><br><code>o</code><br><code>g</code><br><code>i</code><br><code>n</code></td><td><table>
    <tr><td>sddm-git</td><td>display manager for login</td></tr>
    <tr><td>qt5-wayland</td><td>for QT wayland XDP</td></tr>
    <tr><td>qt6-wayland</td><td>for QT wayland XDP</td></tr>
    <tr><td>qt5-quickcontrols</td><td>for sddm theme</td></tr>
    <tr><td>qt5-quickcontrols2</td><td>for sddm theme</td></tr>
    <tr><td>qt5-graphicaleffects</td><td>for sddm theme</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>h</code><br><code>y</code><br><code>p</code><br><code>r</code></td><td><table>
    <tr><td>hyprland-git</td><td>main window manager (hyprland-nvidia-git if nvidia card is detected)</td></tr>
    <tr><td>dunst</td><td>graphical notification daemon</td></tr>
    <tr><td>rofi-lbonn-wayland-git</td><td>app launcher</td></tr>
    <tr><td>waybar-hyprland-git</td><td>status bar</td></tr>
    <tr><td>swww</td><td>wallpaper app</td></tr>
    <tr><td>swaylock-effects-git</td><td>lockscreen</td></tr>
    <tr><td>wlogout</td><td>logout screen</td></tr>
    <tr><td>grimblast-git</td><td>screenshot tool</td></tr>
    <tr><td>slurp</td><td>selects region for screenshot/screenshare</td></tr>
    <tr><td>swappy</td><td>screenshot editor</td></tr>
    <tr><td>cliphist</td><td>clipboard manager</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>d</code><br><code>e</code><br><code>p</code><br><code>e</code><br><code>n</code><br><code>d</code><br><code>e</code><br><code>n</code><br><code>c</code><br><code>y</code></td><td><table>
    <tr><td>polkit-kde-agent</td><td>authentication agent</td></tr>
    <tr><td>xdg-desktop-portal-hyprland</td><td>XDG Desktop Portal</td></tr>
    <tr><td>pacman-contrib</td><td>for system update check</td></tr>
    <tr><td>python-pyamdgpuinfo</td><td>for amd gpu info</td></tr>
    <tr><td>parallel</td><td>for parallel processing</td></tr>
    <tr><td>jq</td><td>to read json</td></tr>
    <tr><td>imagemagick</td><td>for image processing</td></tr>
    <tr><td>qt5-imageformats</td><td>for dolphin image thumbnails</td></tr>
    <tr><td>ffmpegthumbs</td><td>for dolphin video thumbnails</td></tr>
    <tr><td>brightnessctl</td><td>brightness control for laptop</td></tr>
    <tr><td>pavucontrol</td><td>audio settings gui</td></tr>
    <tr><td>pamixer</td><td>for waybar audio</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>t</code><br><code>h</code><br><code>e</code><br><code>m</code><br><code>e</code></td><td><table>
    <tr><td>nwg-look</td><td>theming GTK apps</td></tr>
    <tr><td>kvantum</td><td>theming QT apps</td></tr>
    <tr><td>qt5ct</td><td>theming QT5 apps</td></tr></table>
</td></tr></table>

<table><tr><td>
<code>a</code><br><code>p</code><br><code>p</code><br><code>s</code></td><td><table>
    <tr><td>firefox</td><td>browser</td></tr>
    <tr><td>kitty</td><td>terminal</td></tr>
    <tr><td>neofetch</td><td>fetch tool</td></tr>
    <tr><td>dolphin</td><td>kde file manager</td></tr>
    <tr><td>visual-studio-code-bin</td><td>gui code editor</td></tr>
    <tr><td>vim</td><td>text editor</td></tr>
    <tr><td>ark</td><td>kde file archiver</td></tr></table>
</td></tr></table>

<table><tr><td>
    <code>s</code><br><code>h</code><br><code>e</code><br><code>l</code><br><code>l</code></td><td><table>
    <tr><td>zsh</td><td>main shell</td></tr>
    <tr><td>eza</td><td>colorful file lister</td></tr>
    <tr><td>oh-my-zsh-git</td><td>for zsh plugins</td></tr>
    <tr><td>zsh-theme-powerlevel10k-git</td><td>theme for zsh</td></tr>
    <tr><td>pokemon-colorscripts-git</td><td>display pokemon sprites</td></tr></table>
</td></tr></table>


<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)
</div>

## Keybindings

| Keys | Action |
| :--  | :-- |
| `Super + Q` | quit active/focused window
| `Alt + F4` | quit active/focused window
| `Super + L` | lock screen
| `Super + Backspace` | logout menu
| `Super + Del` | quit hyprland session (logout w/out confirmation)
| `Super + SPACE` | toggle window on focus to float
| `Super + F` | toggle window on focus to fullscreen
| `SUPER + J` | toggle layout
| `SUPER + P` | toggle pseudotile
| `Super + G` | toggle window group
| `Super + RETURN` / `(Numpad ENTER)` | launch terminal (kitty)
| `Super + E` | launch file explorer (dolphin)
| `Super + C` | launch editor (vscode)
| `Super + B` | launch browser (msedge)
| `Super + D` | launch desktop applications (rofi)
| `Super + Tab` | switch open applications (rofi)
| `Super + R` | browse system files (rofi)
| `Super + period` | browse emoji
| `fn + F9` | mute audio output (toggle)
| `fn + F10` `(hold)` | decrease volume
| `fn + F11` `(hold)` | increase volume
| `Super + Ctrl + ALT + S`| open spotify
| `Super + Ctrl + ALT + ↓` `(hold)` | decrease volume for spotify
| `Super + Ctrl + ALT + ↑` `(hold)` | increase volume for spotify
| `Super + V` | clipboard history paste
| `Super + P` | screenshot snip (rectangular select)
| `Super + Alt + P` / `PrintScreen` | screenshot all screen
| `Super + SHIFT + X` | open screenshot folder (HOME/Pictures)
| `Super + RightClick` `(drag)` | resize the window
| `Super + LeftClick` `(drag)` | change the window position
| `Super + MouseScroll` / `PageUp/PageDown` | cycle through workspaces
| `Super + Shift + ←→↑↓` `(hold)` | resize windows
| `Super + [0-9]` | switch to workspace [0-9]
| `Super + backtick` / `backquote` | switch to workspace [0]
| `Super + Shift + [0-9]` | move active window to workspace [0-9]
| `Super + Shift + backtick` / `backquote` | move active window to workspace [0]
| `Super + ALT + [0-9]` | move active window to workspace silently [0-9] (cursor won't follow)
| `Super + ALT + backtick` / `backquote` | move active window to workspace silently [0] (cursor won't follow)
| `Super + CTRL + S` | move window to special workspace
| `Super + CTRL + ←→↑↓` | move window around
| `Super + S` | toogle to special workspace
| `Super + Alt + G` | disable hypr effects for gamemode
| `Super + Alt + →` | next wallpaper
| `Super + Alt + ←` | previous wallpaper
| `Super + Alt + ↑` | next waybar mode
| `Super + Alt + ↓` | previous waybar mode
| `Super + ALT + D` | toggle (theme <//> wall) based colors
| `Super + ALT + T` | theme select menu
| `Super + ALT + W` | wallpaper select menu
| `Super + ALT + A` | rofi style select menu
| `Super + ALT + PageDown/PageUp` | turn on/off blue light filter

### Playlist

| youtube (Prasanth Rangan) |
| --- |
| [![youtube video screenshot](https://raw.githubusercontent.com/devckvargas/hyprdots/main/Source/assets/yt_playlist.png)](https://www.youtube.com/watch?v=_nyStxAI75s&list=PLt8rU_ebLsc5yEHUVsAQTqokIBMtx3RFY) |

</td></tr></table>


<div align = right> <br><br>

[<kbd> <br> Top <br> </kbd>](#-design-by-t2)
</div>

## Known Issues

- [ ] Few scaling issues with rofi configs, as they are created based on [prasanthrangan's](https://github.com/prasanthrangan/) ultrawide (21:9) display.
- [ ] Random lockscreen crash, refer <https://github.com/swaywm/sway/issues/7046>
- [ ] Waybar launching rofi breaks mouse input (added `sleep 0.1` as workaround), refer <https://github.com/Alexays/Waybar/issues/1850>
- [ ] Flatpak QT apps does not follow system theme

