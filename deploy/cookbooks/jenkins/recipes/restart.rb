#
# Cookbook Name:: jenkins
# Recipe:: install
#

execute "sm jenkins restart" do
  command %(sm jenkins restart)
  user 'root'
end
