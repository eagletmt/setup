include_cookbook 'pacman-key-eagletmt'

file '/etc/pacman.conf' do
  action :edit
  server = "[vim-latest]\nServer = http://arch.wanko.cc/$repo/os/$arch"

  block do |content|
    if content =~ /^\[vim-latest\]/
      content.gsub!(/^\[vim-latest\].*\n.*$/, server)
    else
      content << server << "\n"
    end
  end
end

package 'vim-latest'
package 'luajit'

include_cookbook 'clg'
clg 'Shougo/dein.vim'

include_cookbook 'dotfiles'

%w[vim vimrc].each do |file|
  link "#{node[:home]}/.#{file}" do
    to "#{node[:dotfiles][:dir]}/dot.#{file}"
  end
end

directory "#{node[:home]}/.vim/undo" do
  owner node[:user]
  group node[:group]
  mode '755'
end
