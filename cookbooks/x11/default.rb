# TODO: find minimal xorg packages

include_cookbook 'dotfiles'
link "#{node[:home]}/.Xmodmap" do
  to "#{node[:dotfiles][:dir]}/dot.Xmodmap"
end

directory "#{node[:home]}/.config" do
  owner node[:user]
  group node[:group]
  mode '755'
end

link "#{node[:home]}/.config/gtk-3.0" do
  to "#{node[:dotfiles][:dir]}/dot.config/gtk-3.0"
end
