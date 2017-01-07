package 'uim'

include_cookbook 'dotfiles'
link "#{node[:home]}/.uim" do
  to "#{node[:dotfiles][:dir]}/dot.uim"
end
