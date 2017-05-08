package 'nftables'

remote_file '/etc/nftables.sample.conf' do
  owner 'root'
  group 'root'
  mode '644'
end

service 'nftables' do
  action :enable
end
