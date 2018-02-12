include_cookbook 'clg'
node.reverse_merge!(
  dotfiles: {
    dir: "#{node[:clg][:root]}/github.com/eagletmt/dotfiles",
  },
)

clg 'eagletmt/dotfiles'

link "#{node[:home]}/.gitconfig" do
  to "#{node[:dotfiles][:dir]}/dot.gitconfig"
end
