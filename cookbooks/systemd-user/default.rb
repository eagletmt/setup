directory '/etc/systemd/user.conf.d' do
  owner 'root'
  group 'root'
  mode '755'
end

remote_file '/etc/systemd/user.conf.d/accounting.conf' do
  owner 'root'
  group 'root'
  mode '644'
end


dbus_session_bus_address =
  if ENV['DBUS_SESSION_BUS_ADDRESS']
    ENV['DBUS_SESSION_BUS_ADDRESS']
  elsif ENV['SUDO_UID']
    "unix:path=/run/user/#{ENV['SUDO_UID']}/bus"
  else
    raise 'Cannot determine DBUS_SESSION_BUS_ADDRESS'
  end

define :systemd_user do
  unit = params[:name]

  execute "env DBUS_SESSION_BUS_ADDRESS=#{dbus_session_bus_address} systemctl --user enable #{unit}" do
    user node[:user]
    command ['env', "DBUS_SESSION_BUS_ADDRESS=#{dbus_session_bus_address}", 'systemctl', '--user', 'enable', unit]
    not_if ['env', "DBUS_SESSION_BUS_ADDRESS=#{dbus_session_bus_address}", 'systemctl', '--user', '--quiet', 'is-enabled', unit]
  end
end
