#
# Cookbook Name:: qt-webkit
# Recipe:: install
#

enable_package 'x11-libs/qt-webkit' do
  version node["qt_webkit_version"]
end

package 'x11-libs/qt-webkit' do
  version node["qt_webkit_version"]
  action :install
end
