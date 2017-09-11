include_cookbook 'ghc'
package 'xmobar'
package 'xmonad-contrib'

include_cookbook 'dotfiles'
link "#{node[:home]}/.xmonad" do
  to "#{node[:dotfiles][:dir]}/dot.xmonad"
end
