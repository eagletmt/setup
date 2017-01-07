package 'ghc'
package 'cabal-install'

include_cookbook 'dotfiles'
link "#{node[:home]}/.ghci" do
  to "#{node[:dotfiles][:dir]}/dot.ghci"
end

execute 'cabal update' do
  user node[:user]
  not_if ['test', '-r', "#{node[:home]}/.cabal/packages/hackage.haskell.org/00-index.cache"]
end

define :cabal, options: [] do
  pkg = params[:name]
  args = [pkg, *params[:options]].join(' ')

  execute "cabal install -j4 #{args}" do
    user node[:user]
    not_if ['ghc-pkg', 'latest', pkg]
  end
end
