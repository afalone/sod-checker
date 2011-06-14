#setup user environment
ENV['RAILS_ENV'] = 'development'
worker_processes(1)
preload_app true
user('afa','wheel')
timeout 40
listen '0.0.0.0:3000'
#listen '/var/sockets/cup-of.cup-of.sock'
working_directory '/home/afa/rails/sod-checker'
pid '/home/afa/rails/sod-checker/tmp/pids/unicorn.pid'
stderr_path "/home/afa/rails/sod-checker/log/unicorn.stderr.log"
stdout_path "/home/afa/rails/sod-checker/log/unicorn.stdout.log"

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

