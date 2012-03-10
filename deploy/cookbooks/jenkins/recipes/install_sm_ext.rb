#
# Cookbook Name:: jenkins
# Recipe:: install_sm_ext
#

execute "sm ext install jenkins #{node[:sm_jenkins_uri]}" do
  command %(sm ext install jenkins #{node[:sm_jenkins_uri]})
end
