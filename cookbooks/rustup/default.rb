package 'rustup'

define :rustup_toolchain do
  toolchain = params[:name]

  execute "rustup toolchain add #{toolchain}" do
    user node[:user]
    not_if "rustup toolchain list | grep -q '^#{toolchain}-'"
  end
end

rustup_toolchain 'stable'
rustup_toolchain 'beta'
