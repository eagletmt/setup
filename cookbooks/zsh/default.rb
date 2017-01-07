package 'zsh'

include_cookbook 'dotfiles'
%w[zprofile zshenv zshrc].each do |file|
  link "#{node[:home]}/.#{file}" do
    to "#{node[:dotfiles][:dir]}/dot.#{file}"
  end
end
