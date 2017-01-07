package 'tmux'

include_cookbook 'dotfiles'
link "#{node[:home]}/.tmux.conf" do
  to "#{node[:dotfiles][:dir]}/dot.tmux.conf"
end
