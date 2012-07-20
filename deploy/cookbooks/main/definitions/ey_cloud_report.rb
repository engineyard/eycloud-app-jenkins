define :ey_cloud_report do
  execute "reporting for #{params[:name]}" do
    command "/usr/local/ey_resin/ruby/bin/ruby /usr/local/ey_resin/bin/ey-enzyme --report '#{params[:message] || params[:name]}'"
    epic_fail true
  end
end
