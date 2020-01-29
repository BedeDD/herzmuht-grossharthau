# set path to application
app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"
working_directory app_dir

# The rule of thumb is to use 1 worker per processor core available,
# however since we'll be hosting many apps on this server,
# we need to take a less aggressive approach
worker_processes 2

# We deploy with capistrano, so "current" links to root dir of current release
working_directory "/var/www/rails.herzmuht-grossharthau.de/current"

# Listen on unix socket
listen "/tmp/unicorn.kuhseite.sock", :backlog => 64

pid "/var/www/rails.herzmuht-grossharthau.de/current/tmp/pids/unicorn.pid"

stderr_path "/var/www/rails.herzmuht-grossharthau.de/current/log/unicorn.log"
stdout_path "/var/www/rails.herzmuht-grossharthau.de/current/log/unicorn.log"


# Load the app up before forking.
preload_app true

# Garbage collection settings.
GC.respond_to?(:copy_on_write_friendly=) &&
    GC.copy_on_write_friendly = true

# If using ActiveRecord, disconnect (from the database) before forking.
before_fork do |server, worker|
  defined?(ActiveRecord::Base) &&
      ActiveRecord::Base.connection.disconnect!
end

# After forking, restore your ActiveRecord connection.
after_fork do |server, worker|
  defined?(ActiveRecord::Base) &&
      ActiveRecord::Base.establish_connection
end