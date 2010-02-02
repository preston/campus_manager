set :application, "campusmanager"
set :domain,      "campusmanager.prestonlee.com"
set	:repository,	"git@github.com:preston/campus_manager.git"
set :use_sudo,    false
set :deploy_to,   "/var/www/#{domain}"
set :deploy_via, 'copy'
set :scm,         "git"
# set :scm_username,		"www-data"
set :user,			"www-data"

role :app, domain
role :web, domain
role :db,  domain, :primary => true

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end


namespace :config do
 
  desc "Add server-only shared directories."
  task :setup, :roles => [:app] do
  	run "mkdir -p #{shared_path}/config"
    run "mkdir -p #{shared_path}/db"
  end
  after "deploy:setup", "config:setup"
  
  desc "Update server-only config files to new deployment directory."
  task :update, :roles => [:app] do
    run "cp -Rfv #{shared_path}/config #{release_path}"
  end
  after "deploy:update_code", "config:update"

end