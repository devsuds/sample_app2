# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

SampleApp2::Application.load_tasks

namespace :db do
     task :backup do
     system "mysqldump --opt --user=root sample_app2> db/bckup.sql"
  end

  task :restore do
     system "mysqldump --user=root < db/bckup.sql"
   end

end