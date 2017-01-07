file '/etc/pacman.conf' do
  action :edit
  server = "[archlinuxfr]\nSigLevel = Optional\nServer = http://repo.archlinux.fr/$arch"

  block do |content|
    if content =~ /^\[archlinuxfr\]/
      content.gsub!(/^\[archlinuxfr\].*\n.*\n.*$/, server)
    else
      content << server << "\n"
    end
  end
end
