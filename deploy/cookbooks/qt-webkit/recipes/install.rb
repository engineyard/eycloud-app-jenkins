#
# Cookbook Name:: qt-webkit
# Recipe:: install
#

packages_to_unmask = %w[qt-core qt-gui qt-phonon qt-script qt-webkit qt-xmlpatterns qt-qt3support]

packages_to_unmask.each do |package|
  enable_package "x11-libs/#{package}" do
    version node[:qt_webkit_version]
    unmask true
  end
end

package 'x11-libs/qt-webkit' do
  version node[:qt_webkit_version]
  action :install
end
