remote_file '/etc/locale.conf' do
  owner 'root'
  group 'root'
  mode '644'
end

# TODO: Generate /usr/share/i18n/charmaps/UTF-8-CJK.gz

remote_file '/etc/locale.gen' do
  owner 'root'
  group 'root'
  mode '644'
  notifies :run, 'execute[locale-gen]'
end

execute 'locale-gen' do
  action :nothing
  command ['locale-gen']
end
