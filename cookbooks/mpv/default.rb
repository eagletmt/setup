package 'mpv'

include_cookbook 'dotfiles'
link "#{node[:home]}/.mpv" do
  to "#{node[:dotfiles][:dir]}/dot.mpv"
end
