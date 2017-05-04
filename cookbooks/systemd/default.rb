remote_file '/etc/systemd/system.conf' do
  owner 'root'
  group 'root'
  mode '644'
end

directory '/etc/systemd/journald.conf.d' do
  owner 'root'
  group 'root'
  mode '755'
end
remote_file '/etc/systemd/journald.conf.d/limit.conf' do
  owner 'root'
  group 'root'
  mode '644'
end
