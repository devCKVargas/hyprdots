# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Pipx, Spicetify (Spotify)
export PATH="$PATH:$HOME/.local/bin:$HOME/.spicetify"

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Path to powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# In case a command is not found, try to find the package that has it
function command_not_found_handler {
    local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'
    printf 'zsh: command not found: %s\n' "$1"
    local entries=( ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$1")"} )
    if (( ${#entries[@]} )) ; then
        printf "${bright}$1${reset} may be found in the following packages:\n"
        local pkg
        for entry in "${entries[@]}" ; do
            local fields=( ${(0)entry} )
            if [[ "$pkg" != "${fields[2]}" ]] ; then
                printf "${purple}%s/${bright}%s ${green}%s${reset}\n" "${fields[1]}" "${fields[2]}" "${fields[3]}"
            fi
            printf '    /%s\n' "${fields[4]}"
            pkg="${fields[2]}"
        done
    fi
    return 127
}

# Detect the AUR wrapper
if pacman -Qi yay &>/dev/null ; then
   aurhelper="yay"
elif pacman -Qi paru &>/dev/null ; then
   aurhelper="paru"
fi

function in {
    local pkg="$1"
    if pacman -Si "$pkg" &>/dev/null ; then
        sudo pacman -S "$pkg"
    else 
        "$aurhelper" -S "$pkg"
    fi
}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Helpful aliases
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias vc='code' # gui code editor
alias lg='lazygit' # lazygit

# My aliases
export $EDITOR="nvim" # Editor
alias yc='$aurhelper -Sc' # remove unused cache + yay cache
alias list='$aurhelper -Qe' # list pkgs (explicitly installed)
alias listt='$aurhelper -Qet' # list pkgs w/o deps (explicitly installed)
alias listaur='$aurhelper -Qem' # list pkgs (AUR)

 # Edit config
alias nzsh="$EDITOR ~/.zshrc"
alias nbash="$EDITOR ~/.bashrc"
alias nfish="$EDITOR ~/.config/fish/config.fish"
alias nohmyzsh="$EDITOR ~/.oh-my-zsh"
alias nvisudo="sudo EDITOR=$EDITOR visudo"
alias nkitty="$EDITOR ~/.config/kitty/kitty.conf"
alias ntimesync="sudo $EDITOR /etc/systemd/timesyncd.conf"
alias nenvironment="sudo $EDITOR /etc/environment"
alias nlxdm="sudo $EDITOR /etc/lxdm/lxdm.conf"
alias nlightdm="sudo $EDITOR /etc/lightdm/lightdm.conf"
alias npacman="sudo $EDITOR /etc/pacman.conf"
alias ngrub="sudo $EDITOR /etc/default/grub"
alias nconfgrub="sudo $EDITOR /boot/grub/grub.cfg"
alias nmkinitcpio="sudo $EDITOR /etc/mkinitcpio.conf"
alias nmirrorlist="sudo $EDITOR /etc/pacman.d/mirrorlist"
alias narcomirrorlist="sudo $EDITOR /etc/pacman.d/arcolinux-mirrorlist"
alias nsddm="sudo $EDITOR /etc/sddm.conf"
alias nsddmk="sudo $EDITOR /etc/sddm.conf.d/kde_settings.conf"
alias nfstab="sudo $EDITOR /etc/fstab"
alias nnsswitch="sudo $EDITOR /etc/nsswitch.conf"
alias nsamba="sudo $EDITOR /etc/samba/smb.conf"
alias ngnupgconf="sudo $EDITOR /etc/pacman.d/gnupg/gpg.conf"
alias nhosts="sudo $EDITOR /etc/hosts"
alias nhostname="sudo $EDITOR /etc/hostname"
alias nresolv="sudo $EDITOR /etc/resolv.conf"
alias nneofetch="$EDITOR ~/.config/neofetch/config.conf"
alias nplymouth="sudo $EDITOR /etc/plymouth/plymouthd.conf"
alias nvconsole="sudo $EDITOR /etc/vconsole.conf"

 # open folder w/ Code
alias codeHypr="code ~/.config/hypr"
alias codeHyprdots="code ~/github/devck/hyprdots"

 # Hyprland config
alias nhyprland="code ~/.config/hypr/hyprland.conf"
alias nuserprefs="code ~/.config/hypr/userprefs.conf"
alias nkeybinds="code ~/.config/hypr/keybindings.conf"
alias nmonitors="code ~/.config/hypr/monitors.conf"
alias nwindowrules="code ~/.config/hypr/windowrules.conf"
alias nnvidia="code ~/.config/hypr/nvidia.conf"

 # Update (grub, font, etc)
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update-font="sudo fc-cache -fv"

 # Unlock user (after failed login attempts)
alias unlockme="faillock --user $(whoami) --reset"

 # Trash-cli
alias rm="trash-put -v"
alias trash-empty="trash-empty -fv"

 # Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # latest 200 pkgs
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl" # latest 3000 pkgs

 # Print
alias whichvga="/usr/local/bin/arcolinux-which-vga"
alias whichgpu="/usr/local/bin/arcolinux-which-vga"
alias hw="hwinfo --short"
alias audio="pactl info | grep 'Server Name'"
alias iso="cat /etc/dev-rel"
alias audio="pactl info | grep 'Server Name'" # audio check pulseaudio or pipewire
 # reading logs with bat
alias lcalamares="bat /var/log/Calamares.log"
alias lpacman="bat /var/log/pacman.log"
alias lxorg="bat /var/log/Xorg.0.log"
alias lxorgo="bat /var/log/Xorg.0.log.old"
 # give the list of all installed desktops - xsessions desktops
alias xd="ls /usr/share/xsessions"
alias xdw="ls /usr/share/wayland-sessions"
 # btrfs
alias btrfsfs="sudo btrfs filesystem df /"
alias btrfsli="sudo btrfs su li / -t"

 # fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Display specs
neofetch

#Display Pokemon
#pokemon-colorscripts -r

#Display random gifs
