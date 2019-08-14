node.reverse_merge!(
  yay: {
    alpm: Alpm::Handle.new('/', '/var/lib/pacman'),
  },
)

include_cookbook 'aur-eagletmt'
package 'yay'

define :yay do
  pkg = params[:name]

  execute "yay -S --noconfirm #{pkg}" do
    user node[:user]
    command ['yay', '-S', '--noconfirm', pkg]
    not_if { node[:yay][:alpm].installed?(pkg) }
  end
end
