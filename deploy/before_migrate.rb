# Runs application cookbooks
sudo "/usr/local/ey_resin/ruby/bin/chef-solo -c #{latest_release}/deploy/solo.rb -j /etc/chef/dna.json"

run "cat #{latest_release}/deploy/chef-stacktrace.out 2> /dev/null || echo 'Chef run successful'"
