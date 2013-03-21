$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hesburgh_assets/version"

# Describe your s.add_development_dependency and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hesburgh_assets"
  s.version     = HesburghAssets::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HesburghAssets."
  s.description = "TODO: Description of HesburghAssets."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "jquery-rails", '~> 2.1.4'
  s.add_dependency "twitter-bootstrap-rails"
  s.add_dependency 'sass-rails',   '~> 3.2.3'
  s.add_dependency 'coffee-rails', '~> 3.2.1'
  s.add_dependency 'uglifier', '>= 1.0.3'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'

  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-coffeescript'
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-spork'
end
