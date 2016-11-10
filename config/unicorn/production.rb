
install_dir = File.expand_path("../../../../", __FILE__)
app_dir = File.join(install_dir, "current")
shared_dir = File.join(install_dir, "shared")
working_directory app_dir

worker_processes 2
preload_app true
timeout 30

listen "/var/run/unicorn.sock", backlog: 64
stderr_path "#{shared_dir}/log/unicorn.stderr.log"
stdout_path "#{shared_dir}/log/unicorn.stdout.log"
pid "#{shared_dir}/tmp/pids/unicorn.pid"
