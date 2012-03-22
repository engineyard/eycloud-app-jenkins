if Chef::VERSION == '0.6.0.2'
  recipes('main')
  owner_name(@attribute[:users].first[:username])
  owner_pass(@attribute[:users].first[:password])
end
