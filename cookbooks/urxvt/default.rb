package 'rxvt-unicode'
package 'urxvt-perls'

include_cookbook 'dotfiles'
link "#{node[:home]}/.Xdefaults" do
  to "#{node[:dotfiles][:dir]}/dot.Xdefaults"
end
