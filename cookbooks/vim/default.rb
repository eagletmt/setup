include_cookbook 'arch-wanko-cc'
package 'vim-latest'

include_cookbook 'ghq'
ghq 'Shougo/dein.vim'

include_cookbook 'dotfiles'

%w[vim vimrc].each do |file|
  link "#{node[:home]}/.#{file}" do
    to "#{node[:dotfiles][:dir]}/dot.#{file}"
  end
end
