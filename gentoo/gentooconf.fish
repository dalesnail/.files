if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr fishconf       "vim ~/.config/fish/config.fish"
abbr fource         ". ~/.config/fish/config.fish"
abbr kittyconf      "vim ~/.config/kitty/kitty.conf"
abbr emerge         "sudo emerge"
abbr loadfont       "fc-cache -f -v"
abbr emergeup       "sudo emerge --ask --verbose --update --deep --newuse @world"
abbr makeconf       "sudo vim /etc/portage/make.conf"

set fish_greeting
