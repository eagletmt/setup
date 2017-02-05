package 'rustup'

define :rustup_toolchain do
  toolchain = params[:name]

  execute "rustup toolchain add #{toolchain}" do
    user node[:user]
    command ['rustup', 'toolchain', 'add', toolchain]
    not_if do
      out, _, status = Open3.capture3('rustup', 'toolchain', 'list')
      status.success? && out.lines.any? { |line| line.start_with?("#{toolchain}-") }
    end
  end
end

rustup_toolchain 'stable'
rustup_toolchain 'beta'
