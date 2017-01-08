define :pacman_key do
  keyid = params[:name]

  execute "pacman-key --recv-keys #{keyid} && pacman-key --lsign-key #{keyid}"  do
    not_if ['pacman-key', '--finger', keyid]
  end
end

pacman_key 'C48DBD97'
