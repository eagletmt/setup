include_cookbook 'openssh'
include_cookbook 'systemd-user'

remote_file "#{node[:home]}/.config/systemd/user/ssh-agent.service" do
  owner node[:user]
  group node[:group]
  mode '644'
  source 'files/ssh-agent.service'
end

systemd_user 'ssh-agent.service'
