# Generic profile file to be used with any shell via symlinking
# Runs on login, environment variables should be set here

# Add ~/.local/scripts to $PATH
export PATH="$PATH:$(du "$HOME/.local/scripts" "$HOME/.local/bin" "$HOME/.cargo/bin" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="lf"
export STATUSBAR="polybar"

# Relocate other files
# zshrc
export ZDOTDIR="$HOME/.config/zsh"
# warprc for wd
export WD_CONFIG="$HOME/.config/wdrc"

# zsh-autosuggestions
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_COMPLETION_IGNORE="yay *"

# Other program settings
export SUDO_ASKPASS="$HOME/.local/scripts/rofi_ask_pass"
export LF_ICONS="di=:fi=:ln=:or=:ex=:*.c=:*.cc=:*.clj=:*.coffee=:*.cpp=:*.css=:*.d=:*.dart=:*.erl=:*.exs=:*.fs=:*.go=:*.h=:*.hh=:*.hpp=:*.hs=:*.html=:*.java=:*.jl=:*.js=:*.json=:*.lua=:*.md=:*.php=:*.pl=:*.pro=:*.py=:*.rb=:*.rs=:*.scala=:*.ts=:*.vim=:*.cmd=:*.ps1=:*.sh=:*.bash=:*.zsh=:*.fish=:*.tar=:*.tgz=:*.arc=:*.arj=:*.taz=:*.lha=:*.lz4=:*.lzh=:*.lzma=:*.tlz=:*.txz=:*.tzo=:*.t7z=:*.zip=:*.z=:*.dz=:*.gz=:*.lrz=:*.lz=:*.lzo=:*.xz=:*.zst=:*.tzst=:*.bz2=:*.bz=:*.tbz=:*.tbz2=:*.tz=:*.deb=:*.rpm=:*.jar=:*.war=:*.ear=:*.sar=:*.rar=:*.alz=:*.ace=:*.zoo=:*.cpio=:*.7z=:*.rz=:*.cab=:*.wim=:*.swm=:*.dwm=:*.esd=:*.jpg=:*.jpeg=:*.mjpg=:*.mjpeg=:*.gif=:*.bmp=:*.pbm=:*.pgm=:*.ppm=:*.tga=:*.xbm=:*.xpm=:*.tif=:*.tiff=:*.png=:*.svg=:*.svgz=:*.mng=:*.pcx=:*.mov=:*.mpg=:*.mpeg=:*.m2v=:*.mkv=:*.webm=:*.ogm=:*.mp4=:*.m4v=:*.mp4v=:*.vob=:*.qt=:*.nuv=:*.wmv=:*.asf=:*.rm=:*.rmvb=:*.flc=:*.avi=:*.fli=:*.flv=:*.gl=:*.dl=:*.xcf=:*.xwd=:*.yuv=:*.cgm=:*.emf=:*.ogv=:*.ogx=:*.aac=:*.au=:*.flac=:*.m4a=:*.mid=:*.midi=:*.mka=:*.mp3=:*.mpc=:*.ogg=:*.ra=:*.wav=:*.oga=:*.opus=:*.spx=:*.xspf=:*.pdf="

# Set wallpaper
xwallpaper --center ~/.config/wallpaper >/dev/null 2>&1

# Start redshift if needed
[ "$(date +%H)" -ge "22" ] && pgrep redshift >/dev/null 2>&1 || { redshift -c "$HOME/.config/redshift/redshift.conf" >/dev/null 2>&1 & disown ; }

