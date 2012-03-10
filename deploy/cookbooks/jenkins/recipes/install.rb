#
# Cookbook Name:: jenkins
# Recipe:: install
#

execute "sm jenkins install" do
  command %(sm jenkins install)
  user 'root'
end
