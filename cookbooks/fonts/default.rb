package 'ttf-inconsolata'
package 'ttf-symbola'
package 'fontforge'

include_cookbook 'yaourt'
yaourt 'ttf-migu'
yaourt 'ttf-ricty'

include_cookbook 'dotfiles'
link "#{node[:home]}/.config/fontconfig" do
  to "#{node[:dotfiles][:dir]}/dot.config/fontconfig"
end
