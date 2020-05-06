#function fish_prompt
#    set_color green
#    pwd
#    set_color normal
#    echo ">"
#end

#fish_vi_key_bindings

export EDITOR=vim

function ll
   ls --human-readable -l $argv
end

function b
   bash -c $argv
end

function corona
    curl https://corona-stats.online/Belgium
end

function upgradable
    sudo apt update 
    sudo apt list --upgradable
end

function inuitsgit
   cd /media/Storage/Stage/Inuits/git/
end

function lla
   ls --human-readable -la $argv
end


function dfg
   df -B G
end

function switchintel 
   sed -i 's/env:MONITOR:eDP-1-1/env:MONITOR:eDP-1/g' /home/matthias/.config/polybar/dark-config
   notify-send "switching back to intel"
   sleep 2
   optimus-manager --switch intel --no-confirm
end

function switchnvidia
   sed -i 's/env:MONITOR:eDP-1/env:MONITOR:eDP-1-1/g' /home/matthias/.config/polybar/dark-config
   notify-send "switching to nvidia (game on!)"
   sleep 2
   optimus-manager --switch nvidia --no-confirm 
end
#function tmux
#    TERM=xterm-256color tmux
#end

#function jenkinsVagrant
#   cd /media/Storage/Documents/git/vagrant-shell-skeleton && vagrant
#up && vagrant ssh
#end
set TERM xterm
