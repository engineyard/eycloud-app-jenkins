#
# Cookbook Name:: jenkins
# Recipe:: install
#

execute "sm jenkins configure" do
  command %(sm jenkins configure)
  user 'root'
end
