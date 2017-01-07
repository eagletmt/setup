include_cookbook 'archlinux-fr'
package 'yaourt'

define :yaourt do
  pkg = params[:name]

  execute "yaourt -S --noconfirm #{pkg}" do
    not_if ['pacman', '-Q', pkg]
  end
end
