package 'firefox'

include_cookbook 'dotfiles'

link "#{node[:home]}/.config/vimfx" do
  to "#{node[:dotfiles][:dir]}/dot.config/vimfx"
end
