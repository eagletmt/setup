include_cookbook 'ghc'
package 'xmobar'

cabal 'xmonad'
cabal 'xmonad-contrib' do
  options %w[-fuse_xft]
end

include_cookbook 'dotfiles'
link "#{node[:home]}/.xmonad" do
  to "#{node[:dotfiles][:dir]}/dot.xmonad"
end
