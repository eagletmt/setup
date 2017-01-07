include_cookbook 'ghc'

cabal 'xmonad'
cabal 'xmonad-contrib' do
  options %w[-fuse_xft]
end
cabal 'xmobar' do
  options %w[-fwith_xft]
end

include_cookbook 'dotfiles'
link "#{node[:home]}/.xmonad" do
  to "#{node[:dotfiles][:dir]}/dot.xmonad"
end
