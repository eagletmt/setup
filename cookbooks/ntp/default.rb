package 'ntp'

service 'ntpd.service' do
  action [:enable, :start]
end
