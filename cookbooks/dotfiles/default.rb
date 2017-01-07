node.reverse_merge!(
  dotfiles: {
    dir: "#{node[:home]}/.ghq/github.com/eagletmt/dotfiles",
  },
)

execute 'ghq get eagletmt/dotfiles' do
  user node[:user]
  not_if ['test', '-d', node[:dotfiles][:dir]]
end
