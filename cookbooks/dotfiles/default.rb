include_cookbook 'ghq'
node.reverse_merge!(
  dotfiles: {
    dir: "#{node[:ghq][:root]}/github.com/eagletmt/dotfiles",
  },
)

ghq 'eagletmt/dotfiles'

link "#{node[:home]}/.gitconfig" do
  to "#{node[:dotfiles][:dir]}/dot.gitconfig"
end
