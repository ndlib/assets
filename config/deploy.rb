set :application, 'assets'

desc "Setup for the Pre-Production environment"
task :pre_production do
  set :user,      'apprd'
  set :home_path, "/shared/asset_pprd"
end

desc "Setup for the production environment"
task :production do
  set :user,      'aprod'
  set :home_path, "/shared/asset_prod"
end

require "#{File.dirname(__FILE__)}/../lib/hesburgh_infrastructure/deploy"
