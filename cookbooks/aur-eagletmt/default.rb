include_cookbook 'pacman-key-eagletmt'

file '/etc/pacman.conf' do
  action :edit
  server = "[aur-eagletmt]\nServer = http://arch.wanko.cc/$repo/os/$arch"

  block do |content|
    if content =~ /^\[aur-eagletmt\]/
      content.gsub!(/^\[aur-eagletmt\].*\n.*$/, server)
    else
      content << server << "\n"
    end
  end
end
