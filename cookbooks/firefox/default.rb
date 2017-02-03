package 'firefox'

include_cookbook 'dotfiles'
%w[vimperatorrc vimperator].each do |file|
  link "#{node[:home]}/.#{file}" do
    to "#{node[:dotfiles][:dir]}/dot.#{file}"
  end
end
ghq 'eagletmt/misc'

link "#{node[:home]}/.config/vimfx" do
  to "#{node[:dotfiles][:dir]}/dot.config/vimfx"
end
