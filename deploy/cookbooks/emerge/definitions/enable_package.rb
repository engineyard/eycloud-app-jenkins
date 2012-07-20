define :enable_package, :version => nil do
  name = params[:name]
  version = params[:version]
  full_name = name + ("-#{version}" if version)
  unmask = params[:unmask] || false

  execute "local portage package.keywords #{full_name}" do
    command "echo '=#{full_name}' >> /etc/portage/package.keywords/local"
    not_if "grep '=#{full_name}' /etc/portage/package.keywords/local"
  end
  
  if unmask
    execute "unmask portage package.keywords #{full_name}" do
      command "echo '=#{full_name}' >> /etc/portage/package.unmask/local"
      not_if "grep '=#{full_name}' /etc/portage/package.unmask/local"
    end
  end
end
