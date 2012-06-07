ey_cloud_report "Installing SM framework"

execute "install-sm" do
  command <<-SHELL
  for entry in /tmp/sm-* ; do rm -rf ${entry} ; done

  version=$(curl https://smf.sh/releases/latest.txt) &&
  curl -O https://smf.sh/releases/sm-${version}.tar.bz2 &&
  tar jxf sm-${version}.tar.bz2 &&
  cd sm-${version} &&
  ./install
  SHELL
  action :run
end

link "/bin/sm" do
  to "/opt/sm/bin/sm"
end
