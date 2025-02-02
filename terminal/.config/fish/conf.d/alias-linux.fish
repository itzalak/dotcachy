switch (uname)
    case Linux
        alias t='go-task'
        alias btc='bluetoothctl connect'
        alias btd='bluetoothctl disconnect'
        alias tarnow='tar -acf '
        alias untar='tar -zxvf '
        alias hw='hwinfo --short'                                   # Hardware Info
        alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
        alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'          # List amount of -git packages
        alias mirror="sudo cachyos-rate-mirrors"
        alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
end
