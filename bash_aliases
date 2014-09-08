alias sudo='sudo env PATH=$PATH env LD_LIBRARY_PATH=$LD_LIBRARY_PATH'
alias make='colormake -j8'
alias gittree='git log --graph --decorate --pretty=oneline --abbrev-commit'

alias lines='wc -l `find ./ -type f | egrep "\.(hpp|h|cpp|c|cl|cu|glsl)$" | sort | uniq | xargs`'

alias la='ls -a'
alias ll='ls -l'
alias open='sudo open'

alias agu='sudo apt-get update'
alias agi='sudo apt-get install'

alias shutdown='sudo /sbin/shutdown'
alias halt='sudo  /sbin/halt'
alias reboot='sudo /sbin/reboot'

alias tv='vlc ~/Bureau/chaines_tnt.m3u'

alias kiosk='firefox https://intranet.ensimag.fr/KIOSK/index.php?PATH=/Ensimag/2A/MMIS/ $'

alias darkvador='ssh -X -At keckjb@lacan.imag.fr ssh -X darkvador'
alias darkvadors='sftp -At keckjb@lacan.imag.fr sftp darkvador'

alias telesun='ssh keckj@telesun.imag.fr'
alias telesuns='sftp keckj@telesun.imag.fr'

alias ensibm='ssh keckj@ensibm.imag.fr'
alias ensibms='sftp keckj@ensibm.imag.fr'

alias ensisun='ssh keckj@ensisun.imag.fr'
alias ensisuns='sftp keckj@ensisun.imag.fr'

alias screen-left-1c='wmctrl -r :ACTIVE: -e 0,0,0,2560,1440'
alias screen-left-2l='wmctrl -r :ACTIVE: -e 0,0,0,1280,1440'
alias screen-left-2r='wmctrl -r :ACTIVE: -e 0,1280,0,1280,1440'
alias screen-left-3l='wmctrl -r :ACTIVE: -e 0,0,0,853,1440'
alias screen-left-3c='wmctrl -r :ACTIVE: -e 0,853,0,854,1440'
alias screen-left-3r='wmctrl -r :ACTIVE: -e 0,1707,0,853,1440'
alias screen-left-4ul='wmctrl -r :ACTIVE: -e 0,0,0,1280,690'
alias screen-left-4dl='wmctrl -r :ACTIVE: -e 0,0,0,1280,690'
alias screen-left-4ur='wmctrl -r :ACTIVE: -e 0,1280,0,1280,690'
alias screen-left-4dr='wmctrl -r :ACTIVE: -e 0,1280,730,1280,690'

alias screen-right-1c='wmctrl -r :ACTIVE: -e 0,2560,0,1920,1080'
alias screen-right-2l='wmctrl -r :ACTIVE: -e 0,2560,0,960,1080'
alias screen-right-2r='wmctrl -r :ACTIVE: -e 0,3840,0,960,1080'
alias screen-right-3l='wmctrl -r :ACTIVE: -e 0,2560,0,640,1080'
alias screen-right-3c='wmctrl -r :ACTIVE: -e 0,3200,0,640,1080'
alias screen-right-3r='wmctrl -r :ACTIVE: -e 0,3840,0,640,1080'
alias screen-right-4ul='wmctrl -r :ACTIVE: -e 0,2560,0,960,520' 
alias screen-right-4dl='wmctrl -r :ACTIVE: -e 0,2560,910,960,520'
alias screen-right-4ur='wmctrl -r :ACTIVE: -e 0,3840,0,960,520'
alias screen-right-4dr='wmctrl -r :ACTIVE: -e 0,3840,910,960,520'
