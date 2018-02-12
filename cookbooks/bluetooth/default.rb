package 'bluez'
package 'bluez-libs'
package 'bluez-utils'
package 'bluez-firmware'

remote_file '/etc/bluetooth/main.conf' do
  owner 'root'
  group 'root'
  mode '644'
end

service 'bluetooth.service' do
  action [:enable, :start]
end
