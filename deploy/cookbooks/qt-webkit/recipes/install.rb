#
# Cookbook Name:: qt-webkit
# Recipe:: install
#

packages_to_unmask = %w[qt-webkit qt-gui qt-script qt-core qt-qt3support qt-sql]

packages_to_unmask.each do |package|
  enable_package "x11-libs/#{package}" do
    version node[:qt_webkit_version]
  end
end

package 'x11-libs/qt-webkit' do
  version node[:qt_webkit_version]
  action :install
end
