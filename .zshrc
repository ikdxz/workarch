# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZSH_THEME="/home/kelly/.configpowerlevel10k/powerlevel10k"
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# Custom Aliases

alias vim='nvim'
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='/bin/bat --paging=never'
alias catn='cat'
alias catnl='batcat'


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/zsh-autosuggestions.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh


# Custom Aliases

alias vim='nvim'
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='/bin/bat --paging=never'
alias catn='cat'
alias catnl='batcat'
alias kname='kitty-tabname'
alias ssi='ssh -i /home/kelly/.ssh/id_ed25519_inaki inaki@servidor'
alias vpn='sudo openvpn --config /home/kelly/Downloads/Chrome/vpn.ovpn'
alias NPM='ssh -i ~/.ssh/id_ed25519_inaki -L 9090:localhost:81 inaki@servidor'
alias home='ssh -i ~/.ssh/id_ed25519_home homeuser@192.168.0.100'
alias spotify='/usr/local/bin/spotify.sh &>/dev/null'
alias code='/usr/sbin/code . && exit' 

export PATH=$PATH:/home/kelly/.spicetify
export PATH="$HOME/.spicetify:$PATH"


function kitty-tabname() {
  if [ -z "$1" ]; then
    echo "⚠️  Utilisation : kitty-tabname <nouveau_nom>"
    return 1
  fi
  kitty @ set-tab-title "$1"
}




setopt CHECK_JOBS

  export FLYCTL_INSTALL="/home/kelly/.fly"
  export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
bindkey "^[[3~" delete-char   



extractPorts(){
    ports="$(grep -oP '^\s*\K\d+(?=/tcp\s+open)' "$1" | xargs | tr ' ' ',')"
    ip_address="$(grep -oP '\d{1,3}(\.\d{1,3}){3}' "$1" | sort -u | head -n 1)"
    {
        echo -e "\n[*] Extracting information...\n"
        echo -e "\t[*] IP Address: $ip_address"
        echo -e "\t[*] Open ports: $ports\n"
        echo -e "[*] Ports copied to clipboard\n"
    } > extractPorts.tmp

    echo -n "$ports" | xclip -sel clip
    cat extractPorts.tmp; rm extractPorts.tmp
}


function mkt(){
	mkdir {nmap,content,exploits,scripts,docs}
}
