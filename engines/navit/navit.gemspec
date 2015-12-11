$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'navit/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'navit'
  s.version     = Navit::VERSION
  s.authors     = ['Michael Archibald']
  s.email       = ['marchibald@nav.com']
  s.homepage    = 'http://app.nav.com'
  s.summary     = 'Nav Reddit Clone'
  s.description = 'A way to share and upvote ideas'
  s.license     = 'Meh'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 4.1.4'

  s.add_dependency 'pg'
end
