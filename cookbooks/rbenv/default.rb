include_cookbook 'clg'
clg 'rbenv/rbenv'
clg 'rbenv/ruby-build'

link "#{node[:home]}/.rbenv" do
  to "#{node[:clg][:root]}/github.com/rbenv/rbenv"
end
directory "#{node[:home]}/.rbenv/plugins" do
  owner node[:user]
  group node[:group]
  mode '755'
end
link "#{node[:home]}/.rbenv/plugins/ruby-build" do
  to "#{node[:clg][:root]}/github.com/rbenv/ruby-build"
end
