APP_ROOT = '/var/www/maoyizu/current'
pidfile "#{APP_ROOT}/tmp/pids/puma.pid"
state_path "#{APP_ROOT}/tmp/pids/puma.state"
stdout_redirect "#{APP_ROOT}/log/puma.stdout", "#{APP_ROOT}/log/puma.stderr"
daemonize true
workers 4
threads 8,32
preload_app!

