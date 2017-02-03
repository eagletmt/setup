node.reverse_merge!(
  ghq: {
    root: "#{node[:home]}/.ghq",
  },
)

include_cookbook 'git'
package 'ghq'

define :ghq do
  repo = params[:name]

  execute "ghq get #{repo}" do
    user node[:user]
    command ['ghq', 'get', repo]
    not_if { FileTest.directory?("#{node[:ghq][:root]}/github.com/#{repo}") }
  end
end
