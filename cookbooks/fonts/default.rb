package 'ttf-inconsolata'
package 'ttf-symbola'
package 'noto-fonts'
package 'noto-fonts-cjk'
package 'fontforge'

include_cookbook 'yay'
yay 'ttf-migu'
yay 'ttf-ricty'

include_cookbook 'dotfiles'
link "#{node[:home]}/.config/fontconfig" do
  to "#{node[:dotfiles][:dir]}/dot.config/fontconfig"
end
