node[:user] = ENV['SUDO_USER'] || ENV['USER']
node[:home] = "/home/#{node[:user]}"

include_recipe 'cookbooks/functions'

include_cookbook 'git'
include_cookbook 'ghq'
include_cookbook 'dotfiles'

include_cookbook 'envchain'
include_cookbook 'ghc'
