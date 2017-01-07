package 'gdb'

include_cookbook 'dotfiles'
link "#{node[:home]}/.gdbinit" do
  to "#{node[:dotfiles][:dir]}/dot.gdbinit"
end
