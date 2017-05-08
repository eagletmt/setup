package 'docker'

directory '/etc/systemd/system/docker.service.d' do
  owner 'root'
  group 'root'
  mode '755'
end

remote_file '/etc/systemd/network/docker0.netdev' do
  owner 'root'
  group 'root'
  mode '644'
end

remote_file '/etc/systemd/network/docker0.network' do
  owner 'root'
  group 'root'
  mode '644'
end

remote_file '/etc/systemd/system/docker.service.d/override.conf' do
  owner 'root'
  group 'root'
  mode '644'
  notifies :run, 'execute[systemctl daemon-reload]'
end

service 'docker.socket' do
  action [:enable, :start]
end
