dir_path = File.dirname(__FILE__)
Dir[ File.join(dir_path, 'lib/tasks/**/*.rb') ].each { |task| require task }

desc 'Loads the application environment'
task :environment do require File.join(dir_path, 'config/environment') end
