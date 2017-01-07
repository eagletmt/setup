include_cookbook 'arch-wanko-cc'
package 'yaskkserv'

service 'yaskkserv.service' do
  action :enable
end
