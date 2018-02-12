node.reverse_merge!(
  yaourt: {
    alpm: Alpm::Handle.new('/', '/var/lib/pacman'),
  },
)

include_cookbook 'archlinux-fr'
package 'yaourt'

define :yaourt do
  pkg = params[:name]

  execute "yaourt -S --noconfirm #{pkg}" do
    user node[:user]
    command ['yaourt', '-S', '--noconfirm', pkg]
    not_if { node[:yaourt][:alpm].installed?(pkg) }
  end
end
