include_cookbook 'ghq'
node.reverse_merge!(
  dotfiles: {
    dir: "#{node[:ghq][:root]}/github.com/eagletmt/dotfiles",
  },
)

ghq 'eagletmt/dotfiles'
