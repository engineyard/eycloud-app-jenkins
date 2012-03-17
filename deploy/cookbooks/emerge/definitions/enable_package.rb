define :enable_package, :version => nil do
  name = params[:name]
  version = params[:version]
  full_name = name + ("-#{version}" if version)
  unmask = params[:unmask] || false

  update_file "local portage package.keywords" do
    path "/etc/portage/package.keywords/local"
    body "=#{full_name}"
    not_if "grep '=#{full_name}' /etc/portage/package.keywords/local"
  end
  
  if unmask
    update_file "local portage package.unmask" do
      path "/etc/portage/package.unmask/local"
      body "=#{full_name}"
      not_if "grep '=#{full_name}' /etc/portage/package.keywords/local"
    end
  end
end
