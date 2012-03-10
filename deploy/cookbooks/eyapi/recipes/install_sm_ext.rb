#
# Cookbook Name:: eyapi
# Recipe:: install_sm_ext
#

execute "sm ext install eyapi #{node[:sm_eyapi_uri]}" do
  command %(sm ext install eyapi #{node[:sm_eyapi_uri]})
end
