namespace :ctd do
    desc "Greet to CTD"
    task :greet do
      puts "Welcome to Code the Dream"
    end
  end
  require "sinatra/activerecord"
  require "sinatra/activerecord/rake"
  namespace :db do
    #db_config       = YAML::load(File.open('config/database.yml'))
    task :load_config do
      db_config       = YAML::load(File.open('config/database.yml'))
    end
  end