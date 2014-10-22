# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'conference'
set :repo_url, 'git@github.com:theodo/conference.git'

set :ssh_options, {
  forward_agent: true,
}

# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/conference'

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for keep_releases is 5
set :keep_releases, 5

# Symfony environment
set :symfony_env,  "prod"

# Symfony application path
set :app_path,              "app"

# Symfony web path
set :web_path,              "web"

# Symfony log path
set :log_path,              fetch(:app_path) + "/logs"

# Symfony cache path
set :cache_path,            fetch(:app_path) + "/cache"

# Symfony config file path
set :app_config_path,       fetch(:app_path) + "/config"

# Controllers to clear
set :controllers_to_clear, ["app_*.php"]

# Files that need to remain the same between deploys
set :linked_files,          [fetch(:app_path) + "/config/parameters.yml"]

# Dirs that need to remain the same between deploys (shared dirs)
set :linked_dirs,           [fetch(:log_path), fetch(:web_path) + "/uploads"]

# Dirs that need to be writable by the HTTP Server (i.e. cache, log dirs)
set :file_permissions_paths,         [fetch(:log_path), fetch(:cache_path)]

# Name used by the Web Server (i.e. www-data for Apache)
set :webserver_user,        "www-data"

# Method used to set permissions (:chmod, :acl, or :chown)
set :permission_method,     false

# Execute set permissions
set :use_set_permissions,   false

# Symfony console path
set :symfony_console_path, fetch(:app_path) + "/console"

# Symfony console flags
set :symfony_console_flags, "--no-debug"

# Assets install path
set :assets_install_path,   fetch(:web_path)

# Assets install flags
set :assets_install_flags,  '--symlink'

# Assetic dump flags
set :assetic_dump_flags,  ''

fetch(:default_env).merge!(symfony_env: fetch(:symfony_env))

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
