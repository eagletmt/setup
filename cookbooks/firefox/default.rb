package 'firefox'

include_cookbook 'dotfiles'
%w[vimperatorrc vimperator].each do |file|
  link "#{node[:home]}/.#{file}" do
    to "#{node[:dotfiles][:dir]}/dot.#{file}"
  end
end
