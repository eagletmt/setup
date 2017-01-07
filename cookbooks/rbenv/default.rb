include_cookbook 'ghq'
ghq 'rbenv/rbenv'
ghq 'rbenv/ruby-build'

link "#{node[:home]}/.rbenv" do
  to "#{node[:ghq][:root]}/github.com/rbenv/rbenv"
end
directory "#{node[:home]}/.rbenv/plugins" do
  owner node[:user]
  mode '755'
end
link "#{node[:home]}/.rbenv/plugins/ruby-build" do
  to "#{node[:ghq][:root]}/github.com/rbenv/ruby-build"
end
