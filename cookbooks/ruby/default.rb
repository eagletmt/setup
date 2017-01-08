include_cookbook 'pacman-key-eagletmt'

file '/etc/pacman.conf' do
  action :edit
  server = "[ruby-trunk]\nServer = http://arch.wanko.cc/$repo/os/$arch"

  block do |content|
    if content =~ /^\[ruby-trunk\]/
      content.gsub!(/^\[ruby-trunk\].*\n.*$/, server)
    else
      content << server << "\n"
    end
  end
end

package 'ruby-trunk'

include_cookbook 'dotfiles'
link "#{node[:home]}/.irbrc" do
  to "#{node[:dotfiles][:dir]}/dot.irbrc"
end
