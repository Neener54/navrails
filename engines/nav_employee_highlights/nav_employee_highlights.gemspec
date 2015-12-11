$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "nav_employee_highlights/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nav_employee_highlights"
  s.version     = NavEmployeeHighlights::VERSION
  s.authors     = ["Michael"]
  s.email       = ["marchibald@nav.com"]
  s.homepage    = "http://app.nav.com"
  s.summary     = "Highlights of peeps"
  s.description = "Highlights"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.4"
end
