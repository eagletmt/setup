package 'ghc'
package 'cabal-install'
package 'stack'

include_cookbook 'dotfiles'
link "#{node[:home]}/.ghci" do
  to "#{node[:dotfiles][:dir]}/dot.ghci"
end
