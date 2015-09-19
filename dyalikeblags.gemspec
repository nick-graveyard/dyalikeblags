$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dyalikeblags/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dyalikeblags"
  s.version     = Dyalikeblags::VERSION
  s.authors     = ["Nick Kiermaier"]
  s.email       = ["NickKiermaier@gmail.com"]
  s.homepage    = "http://github.com/nkiermaier"
  s.summary     = "well d'ya"
  s.description = "blog gem"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.1.4"
  s.add_dependency "devise"
  s.add_dependency "acts_as_votable"
 
end
