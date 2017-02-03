package 'ghc'
package 'cabal-install'
package 'stack'

include_cookbook 'dotfiles'
link "#{node[:home]}/.ghci" do
  to "#{node[:dotfiles][:dir]}/dot.ghci"
end

execute 'cabal update' do
  user node[:user]
  command ['cabal', 'update']
  not_if { FileTest.file?("#{node[:home]}/.cabal/packages/hackage.haskell.org/00-index.cache") }
end

define :cabal, options: [] do
  pkg = params[:name]
  cmd = ['cabal', 'install', '-j4', pkg, *params[:options]]

  execute cmd.join(' ') do
    user node[:user]
    command cmd
    not_if ['ghc-pkg', 'latest', pkg]
  end
end
