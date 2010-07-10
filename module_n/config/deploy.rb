set :application, "library"
set :repository,  "git@github.com:rah001/work_out.git"

set :scm, :git

set :user, "rahulpatil2387@gmail.com"  # The server's user for deploys
set :scm_passphrase, ""  # The deploy user's password

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "207.97.227.239"                          # Your HTTP server, Apache/etc
role :app, "207.97.227.239"                          # This may be the same as your `Web` server
role :db,  "207.97.227.239", :primary => true # This is where Rails migrations will run
role :db,  "207.97.227.239"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end