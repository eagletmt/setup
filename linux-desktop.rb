node[:user] = ENV['SUDO_USER'] || ENV['USER']
node[:home] = "/home/#{node[:user]}"

include_recipe 'cookbooks/functions'

include_cookbook 'envchain'
include_cookbook 'ghc'
include_cookbook 'tmux'
include_cookbook 'zsh'

include_cookbook 'firefox'
