node.reverse_merge!(
  clg: {
    root: "#{node[:home]}/.clg",
  },
)

include_cookbook 'git'
#package 'clg'

define :clg do
  repo = params[:name]

  execute "clg get #{repo}" do
    user node[:user]
    command ['clg', 'clone', repo]
    not_if { FileTest.directory?("#{node[:clg][:root]}/github.com/#{repo}") }
  end
end
