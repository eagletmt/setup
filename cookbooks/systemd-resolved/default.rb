package 'netctl' do
  action :remove
end

package 'openresolv' do
  action :remove
end

link '/etc/resolv.conf' do
  to '/usr/lib/systemd/resolv.conf'
  force true
end

service 'systemd-resolved.service' do
  action [:enable, :start]
end
