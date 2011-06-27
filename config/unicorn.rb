#setup user environment
ENV['RAILS_ENV'] = 'production'
prefix = "/mnt/data/www/sod-checker"
worker_processes(3)
preload_app true
user('www','devel')
timeout 300
listen "/tmp/unicorn_sod_checker.sock"
#listen '/var/sockets/cup-of.cup-of.sock'
working_directory "#{prefix}"
pid "#{prefix}/tmp/pids/unicorn.pid"
stderr_path "#{prefix}/log/unicorn.stderr.log"
stdout_path "#{prefix}/log/unicorn.stdout.log"

GC.respond_to?(:copy_on_write_friendly=) and
GC.copy_on_write_friendly = true

before_fork do |server, worker|
   old_pid = "#{server.config[:pid]}.oldbin"
   if File.exists?(old_pid) && server.pid != old_pid
      begin
         Process.kill("QUIT", File.read(old_pid).to_i)
      rescue Errno::ENOENT, Errno::ESRCH
      end
   end
end

