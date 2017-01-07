node[:user] = ENV['SUDO_USER'] || ENV['USER']
node[:home] = "/home/#{node[:user]}"

include_recipe 'cookbooks/functions'

# Basic non-GUI apps
include_cookbook 'tmux'
include_cookbook 'zsh'
include_cookbook 'vim'
include_cookbook 'uim'
include_cookbook 'yaskkserv'

# Basic GUI apps
include_cookbook 'urxvt'
include_cookbook 'xmonad'
include_cookbook 'firefox'
include_cookbook 'envchain'

# Extra apps
include_cookbook 'remmina'
include_cookbook 'evince'
include_cookbook 'feh'
include_cookbook 'virt-manager'
