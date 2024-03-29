node[:user] = ENV['SUDO_USER'] || ENV['USER']
gid =
  if ENV['SUDO_GID']
    Integer(ENV['SUDO_GID'])
  else
    Etc.getpwnam(node[:user]).gid
  end
node[:group] = Etc.getgrgid(gid).name
node[:home] = "/home/#{node[:user]}"

include_recipe 'cookbooks/functions'

# Basic non-GUI apps
include_cookbook 'ntp'
include_cookbook 'zsh'
include_cookbook 'vim'
include_cookbook 'uim'
include_cookbook 'yaskkserv'
include_cookbook 'the_silver_searcher'
include_cookbook 'htop'
include_cookbook 'dstat'
include_cookbook 'bind-tools'
include_cookbook 'lsof'
include_cookbook 'sipcalc'
include_cookbook 'pkgfile'
include_cookbook 'systemd'
include_cookbook 'gnupg'
include_cookbook 'ssh-agent'
include_cookbook 'locale'
include_cookbook 'nftables'
include_cookbook 'systemd-resolved'

# Basic GUI apps
include_cookbook 'x11'
include_cookbook 'fonts'
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
include_cookbook 'awscli'
include_cookbook 'rbenv'
include_cookbook 'ruby'
include_cookbook 'docker'

# Extra apps
include_cookbook 'remmina'
include_cookbook 'evince'
include_cookbook 'feh'
include_cookbook 'virt-manager'
include_cookbook 'mpv'
include_cookbook 'bluetooth'
include_cookbook 'pulseaudio'
