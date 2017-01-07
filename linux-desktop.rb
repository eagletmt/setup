node[:user] = ENV['SUDO_USER'] || ENV['USER']
node[:home] = "/home/#{node[:user]}"

include_recipe 'cookbooks/functions'

# Basic non-GUI apps
include_cookbook 'ntp'
include_cookbook 'tmux'
include_cookbook 'zsh'
include_cookbook 'vim'
include_cookbook 'uim'
include_cookbook 'yaskkserv'
include_cookbook 'the_silver_searcher'
include_cookbook 'htop'
include_cookbook 'dstat'

# Basic GUI apps
include_cookbook 'urxvt'
include_cookbook 'xmonad'
include_cookbook 'firefox'
include_cookbook 'envchain'
include_cookbook 'xclip'

# For development
include_cookbook 'gdb'
include_cookbook 'strace'
include_cookbook 'ltrace'
include_cookbook 'valgrind'
include_cookbook 'clang'
include_cookbook 'rustup'
include_cookbook 'global'
include_cookbook 'cmake'
include_cookbook 'hub'
include_cookbook 'openssh'
include_cookbook 'sshfs'

# Extra apps
include_cookbook 'remmina'
include_cookbook 'evince'
include_cookbook 'feh'
include_cookbook 'virt-manager'
