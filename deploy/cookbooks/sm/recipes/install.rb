ey_cloud_report "Installing SM framework"

execute "install-sm" do
  command <<-SHELL
  for entry in /tmp/sm-* ; do rm -rf ${entry} ; done

  curl -L -s https://github.com/sm/sm/tarball/master -o sm-master.tar.gz && 
  tar zxf sm-master.tar.gz && # unpack
  mv sm-sm-* sm-master &&     # rename github-named folder to something known
  cd sm-master && 
  ./install # >/dev/null


  # prefix_path=/eystack ./install >/dev/null
  SHELL
  action :run
end

link "/bin/sm" do
  to "/opt/sm/bin/sm"
end
